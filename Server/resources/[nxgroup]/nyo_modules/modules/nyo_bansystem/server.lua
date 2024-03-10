local module = 'nyo_bansystem'
local traceback = debug.traceback()
local valid_traceback = string.format('@nyo_modules/modules/%s/server.lua', module)

if traceback:find(valid_traceback) then
    NyoModules.registerNyoModule(module, "1.0.1", function()

        local functions = NyoModules.getModuleFunctions()

        NyoModulesGlobalFunctions.DB.async.prepare("nyoModule/setBanToken",
          "INSERT IGNORE INTO nyo_hwidban (token, user_id) VALUES (@token, @user_id)")
        NyoModulesGlobalFunctions.DB.async.prepare("nyoModule/getBanToken", "SELECT * FROM nyo_hwidban WHERE token = @token")
        NyoModulesGlobalFunctions.DB.async.prepare("nyoModule/delBanToken", "DELETE FROM nyo_hwidban WHERE user_id = @user_id")
        NyoModulesGlobalFunctions.DB.async.prepare("nyoModule/checkTokenBan",
          "SELECT * FROM nyo_hwidban hb LEFT JOIN vrp_users u ON (u.id = hb.user_id) WHERE hb.token = @token AND banned = 1")

        NyoModulesGlobalFunctions.DB.sync.prepare("nyoModule/createTable",
          "CREATE TABLE IF NOT EXISTS `nyo_hwidban` (`token` varchar(100) NOT NULL, `user_id` int(10) NOT NULL, PRIMARY KEY (`token`), KEY `user_id` (`user_id`) ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;")

        NyoModulesGlobalFunctions.DB.sync.execute("nyoModule/createTable", {})

        local function GetPlayerTokens(player)
            local numIds = GetNumPlayerTokens(player)
            local t = {}

            for i = 0, numIds - 1 do
                table.insert(t, GetPlayerToken(player, i))
            end

            return t
        end

        local function nyoModuleSetTokenBan(source, user_id)
            if source and user_id then
                local token = GetPlayerTokens(source)
                for k, v in pairs(token) do
                    NyoModulesGlobalFunctions.DB.sync.execute("nyoModule/setBanToken", {
                        token = v,
                        user_id = user_id
                    })
                end

                return token
            end
        end

        local function nyoModuleDelBanToken(user_id)
            if user_id then
                NyoModulesGlobalFunctions.DB.sync.execute("nyoModule/delBanToken", {
                    user_id = user_id
                })
            end
        end

        AddEventHandler("vRP:playerSpawn", function(user_id, source, first_spawn)
            console.debug('^3[ BAN SYSTEM ] ^7Checking player '..user_id)
            local token = nyoModuleSetTokenBan(source, user_id)

            for k, v in pairs(token) do
                local dt = NyoModulesGlobalFunctions.DB.sync.query("nyoModule/checkTokenBan", {
                    token = v
                })
                if #dt > 0 then
                    console.debug('^3[ BAN SYSTEM ] ^7Banning player '..user_id)
                    DropPlayer(source, "[NYO MODULE] Você esta banido por HWID! Contate a administração para mais informações!")
                    functions.sendLog(user_id, dt[1].id)
                    functions.setBanned(user_id)
                    return
                end
            end
        end)
    end)
else
    error 'Module name has been modified'
    NyoModules.preventCheat()
end
