local module = 'nyo_robbery'
local traceback = _G["eTqNnRuptTBY"]()
local valid_traceback = _G["dDcQJEZxsVUL"]('@nyo_modules/modules/%s/server.lua', module)

if traceback:find(valid_traceback) then
    _G["jocFUbwHswUG"](module, "1.0.3", function()
        local robberyStandByRobbery = {}
        local robberyStandByPerson = {}
        local blipsRobbery = {}

        local function wxjfNVZMPLCx(user_id)
            if robberyStandByPerson[user_id] then
                _G["BlTdLpuxZreB"](source, 'Erro',
                  'Você esta sendo procurado por mais: ' .. robberyStandByPerson[user_id] .. ' segundos.', "#FF0000",
                  5000)
                return true
            else
                return false
            end
        end

        exports("nyoModuleCheckStandBy", wxjfNVZMPLCx)

        local function jEvCDJYKKZnX(user_id, time)
            if robberyStandByPerson[user_id] then
                robberyStandByPerson[user_id] = tonumber(robberyStandByPerson[user_id] + tonumber(time))
            else
                robberyStandByPerson[user_id] = tonumber(time)
            end
        end

        exports("nyoModuleSetStandBy", jEvCDJYKKZnX)

        _G["RlAdkFhWyBMh"]('robbery-getModuleItem', function (src, item, qtd)
            return _G["AGCTXzaQqaSI"](_G["vJghXzhWwgis"](src), item, qtd)
        end)

        _G["RlAdkFhWyBMh"]('robbery-robberyResetCooldown', function (source, config, index)
            local stbType = config.robberyStandByType
            if robberyStandByRobbery[config.robberyIndex] then
                if stbType == 1 then
                    if robberyStandByRobbery[config.robberyIndex][index] then
                        robberyStandByRobbery[config.robberyIndex][index] = nil
                    end

                elseif stbType == 2 then
                    if robberyStandByRobbery[config.robberyIndex] then
                        robberyStandByRobbery[config.robberyIndex] = nil
                    end
                else
                    _G["BlTdLpuxZreB"](source, 'Erro', 'Erro no sistema de segurança! Contate a prefeitura.', "#FF0000", 5000)
                end
            end
        end)

        _G["RlAdkFhWyBMh"]('robbery-robberySvCheck', function (source, config, index)
            local user_id = _G["vJghXzhWwgis"](source)
            local stbType = config.robberyStandByType
            local stbCheckStand = config.robberywxjfNVZMPLCx
            local standyPerson = false
            if stbCheckStand then
                if robberyStandByPerson[user_id] then
                    _G["BlTdLpuxZreB"](source, 'Erro',
                      'Você esta sendo procurado por mais: ' .. robberyStandByPerson[user_id] .. ' segundos.',
                      "#FF0000", 5000)
                    standyPerson = true
                end
            end

            if not standyPerson then
                if robberyStandByRobbery[config.robberyIndex] then
                    if stbType == 1 then
                        if robberyStandByRobbery[config.robberyIndex][index] then
                            _G["BlTdLpuxZreB"](source, 'Erro',
                              'Um roubo ja ocorreu! Impossivel efetuar outro roubo! Volte em: ' ..
                                robberyStandByRobbery[config.robberyIndex][index] .. ' segundos.', "#FF0000", 5000)
                            return false
                        else
                            robberyStandByRobbery[config.robberyIndex][index] = tonumber(config.robberyStandByRobbery)
                            return true
                        end

                    elseif stbType == 2 then
                        if robberyStandByRobbery[config.robberyIndex] then
                            _G["BlTdLpuxZreB"](source, 'Erro',
                              'Um roubo ja ocorreu! Impossivel efetuar outro roubo! Volte em: ' ..
                                robberyStandByRobbery[config.robberyIndex] .. ' segundos.', "#FF0000", 5000)
                        else
                            robberyStandByRobbery[config.robberyIndex] = tonumber(config.robberyStandByRobbery)
                            return true
                        end
                    else
                        _G["BlTdLpuxZreB"](source, 'Erro', 'Erro no sistema de segurança! Contate a prefeitura.', "#FF0000", 5000)
                        return false
                    end
                else
                    if stbType == 1 then
                        if not robberyStandByRobbery[config.robberyIndex] then
                            robberyStandByRobbery[config.robberyIndex] = {}
                        end
                        robberyStandByRobbery[config.robberyIndex][index] = tonumber(config.robberyStandByRobbery)
                    elseif stbType == 2 then
                        robberyStandByRobbery[config.robberyIndex] = tonumber(config.robberyStandByRobbery)
                    end
                    return true
                end
            else
                return false
            end
        end)

        _G["RlAdkFhWyBMh"]('robbery-robberySetStandby', function (source, config, index)
            local user_id = _G["vJghXzhWwgis"](source)
            local stbType = config.robberyStandByType
            if robberyStandByRobbery[config.robberyIndex] then
                if stbType == 1 then
                    if robberyStandByRobbery[config.robberyIndex][index] then

                    else
                        robberyStandByRobbery[config.robberyIndex][index] = tonumber(config.robberyStandByRobbery)
                    end

                elseif stbType == 2 then
                    if robberyStandByRobbery[config.robberyIndex] then

                    else
                        robberyStandByRobbery[config.robberyIndex] = tonumber(config.robberyStandByRobbery)
                    end
                end
            else
                if stbType == 1 then
                    robberyStandByRobbery[config.robberyIndex][index] = tonumber(config.robberyStandByRobbery)
                elseif stbType == 2 then
                    robberyStandByRobbery[config.robberyIndex] = tonumber(config.robberyStandByRobbery)
                end
            end

            -- SendWebhookMessage(cfg.config.webHook.robbery,
            --   "```prolog\nRoubo Iniciado.\n[INDEX]: " .. config.robberyIndex .. "\n[LOCATE ID]" .. index ..
            --     "\n[USER ID]: " .. user_id .. " " .. os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S") .. " \r```")
        end)

        _G["xHAXdcjTentA"](function()
            while true do
                _G["xCnKGFHhzrfn"](1000)
                for k, v in pairs(robberyStandByRobbery) do
                    local type = type(robberyStandByRobbery[k])
                    if type == 'number' then
                        robberyStandByRobbery[k] = robberyStandByRobbery[k] - 1
                        if robberyStandByRobbery[k] == 0 then
                            robberyStandByRobbery[k] = nil
                        end
                    elseif type == 'table' then
                        for k2, v2 in pairs(robberyStandByRobbery[k]) do
                            robberyStandByRobbery[k][k2] = robberyStandByRobbery[k][k2] - 1
                            if robberyStandByRobbery[k][k2] == 0 then
                                robberyStandByRobbery[k][k2] = nil
                            end
                        end
                    end
                end
            end
        end)

        _G["xHAXdcjTentA"](function()
            while true do
                _G["xCnKGFHhzrfn"](1000)
                for k, v in pairs(robberyStandByPerson) do
                    if v > 0 then
                        robberyStandByPerson[k] = robberyStandByPerson[k] - 1
                    else
                        robberyStandByPerson[k] = nil
                    end
                end
            end
        end)

        _G["RlAdkFhWyBMh"]('robbery-robberyCheckPolice',function (source, config)
            local policia = _G["WyUmIVuWTjhn"](NyoModulesConfigs.robberyGeneralConfig.policePermission)
            if config.qtdPolice <= #policia then
                return true
            else
                _G["BlTdLpuxZreB"](source, 'Erro', 'Numero insuficiente de policiais.', "#FF0000", 5000)
                return false
            end
        end)

        _G["LYMIixTMVCDl"]('robbery-robberyAlertPolice', function (source, config, x, y, z)
            local source = source
            local policia = _G["WyUmIVuWTjhn"](NyoModulesConfigs.robberyGeneralConfig.policePermission)
            local chamaPolicia = math.random(0, 100)
            if chamaPolicia <= config.policeChance then
                for l, w in pairs(policia) do
                    local player = _G["fYzXmZaEuqJZ"](w)
                    if player then
                        _G["ZUQyXwjuEjyU"](player, x, y, z, config.policeText)
                    end
                end
            end
        end)

        _G["RlAdkFhWyBMh"]('robbery-robberyPayment', function (source, config, time)
            local source = source
            local user_id = _G["vJghXzhWwgis"](source)
            local timeR = config.robberyTime
            local porcent = math.floor(tonumber((time * 100) / timeR))

            if config.robberyjEvCDJYKKZnX then
                jEvCDJYKKZnX(user_id, tonumber(config.robberyStandByPerson))
            end

            if config.paymentType.money then
                local rMoney = math.random(config.paymentMoney.min, config.paymentMoney.max)
                local reward = math.floor(tonumber((rMoney / 100) * porcent))
                if reward > 0 then
                    _G["EEdrKGjmWadC"](user_id, reward)
                end
            end

            if config.paymentType.item then
                if config.paymentItemType == 1 then
                    local rItem = math.random(#config.paymentItem)
                    local rItem2 = math.random(config.paymentItem[rItem].min, config.paymentItem[rItem].max)
                    local reward = math.floor(tonumber((rItem2 / 100) * porcent))
                    if _G["bSaGraBxGFIt"](user_id, config.paymentItem[rItem].item, reward) then
                        _G["zwwoyTMDtKKz"](user_id, config.paymentItem[rItem].item, reward)
                    else
                        _G["BlTdLpuxZreB"](source, 'Erro', 'Você não possui espaço na mochila!', "#FF0000", 5000)
                    end
                elseif config.paymentItemType == 2 then
                    for k, v in pairs(config.paymentItem) do
                        local rItem2 = math.random(v.min, v.max)
                        local reward = math.floor(tonumber((rItem2 / 100) * porcent))
                        if _G["bSaGraBxGFIt"](user_id, v.item, reward) then
                            _G["zwwoyTMDtKKz"](user_id, v.item, reward)
                        else
                            _G["BlTdLpuxZreB"](source, 'Erro', 'Você não possui espaço na mochila!', "#FF0000", 5000)
                        end
                    end
                end
            end

        end)
    end)
else
    error 'Module name has been modified'
    NyoModules.preventCheat()
end
