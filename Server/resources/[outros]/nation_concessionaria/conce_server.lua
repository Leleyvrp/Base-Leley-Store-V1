local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
fclient = Tunnel.getInterface("nation_concessionaria")

func = {}
Tunnel.bindInterface("nation_concessionaria", func)


local conceVehicles = {}
local userVehicles = {}

function func.getConfig()
    return config
end

local webhookcompravendacarro = ""


RegisterServerEvent('nationConce:getConfig')
AddEventHandler('nationConce:getConfig', function()
    local source = source
    TriggerClientEvent("nationConce:setConfig", source, config)
end)


function getDbVehicles()
    local vehicles = vRP.query("nation_conce/getConceVehicles") or {}
    for k,v in ipairs(vehicles) do
        -- local vehInfo = vRP.vehicleGlobal()
        -- if vehInfo then
            conceVehicles[#conceVehicles+1] = { 
                vehicle = v.vehicle, price = exports['nyo_modules']:getVehiclePrice(v.vehicle), modelo = exports['nyo_modules']:getVehicleName(v.vehicle), 
                capacidade = exports['nyo_modules']:getVehicleTrunk(v.vehicle), name = exports['nyo_modules']:getVehicleType(v.vehicle), estoque = v.estoque
            }
            -- if vehInfo.class then
            --     conceVehicles[#conceVehicles].class = vehInfo.class
            -- end
        -- end
    end
end


function checkRentedVehicles()
    vRP.execute("nation_conce/deleteRentedVehicles", { data_alugado = os.date("%d/%m/%Y")})
    Wait(60 * 1000 * 60 * 6)
    checkRentedVehicles()
end

-- Citizen.CreateThread(function()
--     if not config.customMYSQL then
--        vRP._prepare("nation_conce/isVehicleInConce","SELECT * FROM nation_concessionaria WHERE vehicle = @vehicle")

--        vRP.prepare("nation_conce/addVehicle","INSERT IGNORE INTO nation_concessionaria(vehicle,estoque) VALUES(@vehicle,@estoque)")
--        vRP.prepare("nation_conce/removeVehicle","DELETE FROM nation_concessionaria WHERE vehicle = @vehicle")

--        vRP._prepare("nation_conce/addEstoque","UPDATE nation_concessionaria SET estoque = @estoque WHERE vehicle = @vehicle")
--        vRP._prepare("nation_conce/removeEstoque","UPDATE nation_concessionaria SET estoque = @estoque WHERE vehicle = @vehicle")

--        vRP._prepare("nation_conce/addCustomEstoque","UPDATE nation_concessionaria SET estoque = @estoque WHERE vehicle = @vehicle")
--        vRP._prepare("nation_conce/removeCustomEstoque","UPDATE nation_concessionaria SET estoque = estoque - 1 WHERE vehicle = @vehicle")
--    end
--  --  vRP.execute("nation_conce/createDB")
--     getDbVehicles()
--     checkRentedVehicles()
-- end)

Citizen.CreateThread(function()
    Wait(10000)
    if not config.customMYSQL then
        -- vRP._prepare("nation_conce/createDB",[[
        --     CREATE TABLE IF NOT EXISTS `nation_concessionaria` (
        --     `vehicle` TEXT,
        --     `estoque` INT(11) NOT NULL DEFAULT 0,
        --     PRIMARY KEY (`vehicle`(768))
        --     )
        --     COLLATE='utf8mb4_general_ci'
        --     ENGINE=InnoDB
        --     ;
        --     ALTER TABLE vrp_user_vehicles ADD IF NOT EXISTS alugado TINYINT(4) NOT NULL DEFAULT 0;
        --     ALTER TABLE vrp_user_vehicles ADD IF NOT EXISTS data_alugado TEXT;
        -- ]])
        vRP._prepare("nation_conce/isVehicleInConce","SELECT * FROM nation_concessionaria WHERE vehicle = @vehicle")

        vRP.prepare("nation_conce/addVehicle","INSERT IGNORE INTO nation_concessionaria(vehicle,estoque) VALUES(@vehicle,@estoque)")
        vRP.prepare("nation_conce/removeVehicle","DELETE FROM nation_concessionaria WHERE vehicle = @vehicle")

        vRP._prepare("nation_conce/addEstoque","UPDATE nation_concessionaria SET estoque = @estoque WHERE vehicle = @vehicle")
        vRP._prepare("nation_conce/removeEstoque","UPDATE nation_concessionaria SET estoque = @estoque WHERE vehicle = @vehicle")

        vRP._prepare("nation_conce/addCustomEstoque","UPDATE nation_concessionaria SET estoque = @estoque WHERE vehicle = @vehicle")
        vRP._prepare("nation_conce/removeCustomEstoque","UPDATE nation_concessionaria SET estoque = estoque - 1 WHERE vehicle = @vehicle")
    end
    -- vRP.execute("nation_conce/createDB")
    getDbVehicles()
    checkRentedVehicles()
end)

function func.getVehicleInfo(vehicle,list)
    for k,v in ipairs(list) do 
        if string.lower(v.name) == string.lower(vehicle) then
            return list[k]
        end
    end
    return false
end

function func.soloSession(session)
	local src = source
    local user_id = vRP.getUserId(source)
	if GetPlayerRoutingBucket(src) == 0 then
		SetPlayerRoutingBucket(src, 2)
	end
end

function func.remSoloSession()
	local src = source
	if GetPlayerRoutingBucket(src) ~= 0 then
		SetPlayerRoutingBucket(src, 0)
	end
end

function func.getVehInfo(veh)
    if veh then
        return vRP.vehicleGlobal(veh)
        -- return func.getVehicleInfo(veh,conceVehicles)
    end
end

function func.getConceVehicles()

    -- local vehicles = vRP.query("nation_conce/getConceVehicles") or {}
    -- for k,v in ipairs(vehicles) do
    --     -- local vehInfo = vRP.vehicleGlobal()
    --     -- if vehInfo then
    --         conceVehicles[#conceVehicles+1] = { 
    --             vehicle = v.vehicle, price = exports['nyo_modules']:getVehiclePrice(v.vehicle), modelo = exports['nyo_modules']:getVehicleType(v.vehicle), 
    --             capacidade = exports['nyo_modules']:getVehicleTrunk(v.vehicle), name = exports['nyo_modules']:getVehicleName(v.vehicle), estoque = v.estoque
    --         }
    --         -- if vehInfo.class then
    --         --     conceVehicles[#conceVehicles].class = vehInfo.class
    --         -- end
    --     -- end
    -- end
    return conceVehicles
end

function func.getTopVehicles()
    local list = {}
    if config.topVehicles and type(config.topVehicles == "table") then
        for _,veh in ipairs(config.topVehicles) do 
            -- local vehInfo = vRP.vehicleGlobal()
            -- if vehInfo then
            list[#list+1] = { 
                    vehicle = veh, price = exports['nyo_modules']:getVehiclePrice(veh), modelo = exports['nyo_modules']:getVehicleName(veh), 
                    capacidade = exports['nyo_modules']:getVehicleTrunk(veh), name = exports['nyo_modules']:getVehicleType(veh), estoque = 0
                }
                -- if vehInfo.class then
                --     conceVehicles[#conceVehicles].class = vehInfo.class
                -- end
            -- end
        end
    end
    return list
 
end

function func.getDiscount(id)
    local source = source
    local user_id = id or vRP.getUserId(source)
    for _, i in pairs(config.descontos) do 
        if vRP.hasPermission(user_id,i.perm) then
            if i.porcentagem > 100 or i.porcentagem < 0 then
                return 0
            end
            return i.porcentagem
        end
    end
    return 0
end

function getTopVehicleInfo(vehicle)
    if vehicle and conceVehicles then
        for k,v in ipairs(conceVehicles) do 
            if (v.name == vehicle) then
                return conceVehicles[k]
            end
        end 
    end
    return false
end

function getVehicleEstoque(vehicle)
    if vehicle then
        for _,veh in ipairs(conceVehicles) do 
            if veh.vehicle == vehicle then
                return veh.estoque
            end
        end
    end
    return 0
end

function getVehiclePrice(vehicle)
    if vehicle then
        for _,veh in ipairs(conceVehicles) do 
            if veh.vehicle == vehicle then
                return veh.price
            end
        end
    end
    return 0
end

function SendWebhookMessage(webhook,message)
	if webhook ~= nil and webhook ~= "" then
		PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
	end
end

function func.buyVehicle(vehicle,color)
    local source = source
    local user_id = vRP.getUserId(source)
    local estoque = getVehicleEstoque(vehicle)
    if estoque <= 0 then
        return false, "veículo fora de estoque"
    elseif hasVehicle(user_id,vehicle) then
        return false, "veículo já possuído"
    elseif vRP.vehicleClass(vehicle) == "premiums" then 
        if not vRP.hasGroup(user_id,"OriginPlusPermission") or not vRP.hasGroup(user_id,"OriginPermission") or not vRP.hasGroup(user_id,"Platinum") or not vRP.hasGroup(user_id,"Gold") then
            return false, "você não possuí acesso a essa classe de veículos"
        end
    end
    
    local desconto = func.getDiscount(user_id) / 100
    local price = getVehiclePrice(vehicle)
    price = parseInt(price - (price * desconto))
    local mods = fclient.getVehicleMods(source,vehicle)
    local state, message = config.tryBuyVehicle(source,user_id,vehicle,color,price,mods)
    
    if state then
        removeEstoque(vehicle)
        -- local vehInfo = func.getVehicleInfo(vehicle,vehList)

            if user_id and userVehicles[user_id] then
                local veh = { 
                    vehicle = exports['nyo_modules']:getVehicleName(vehicle), price = exports['nyo_modules']:getVehiclePrice(vehicle) * (config.porcentagem_venda / 100),
                    modelo = exports['nyo_modules']:getVehicleType(vehicle), capacidade = exports['nyo_modules']:getVehicleTrunk(vehicle),
                }
                table.insert(userVehicles[user_id], veh)
            end

         --   addUserVehicle(user_id,vehInfo)
    end
    local identity = vRP.getUserIdentity(user_id)
	SendWebhookMessage(webhookcompravendacarro,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[COMPROU]: "..vehicle.." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
    return state, message
end

function func.sellVehicle(vehicle)
    local source = source
    local user_id = vRP.getUserId(source)
    local state, message = false, "erro inesperado"
    local vehInfo = vRP.vehicleGlobal(vehicle)
    --local vehInfo = func.getVehicleInfo(vehicle,vehList)
    if hasVehicle(user_id,vehicle) and vehInfo then
        local price = exports['nyo_modules']:getVehiclePrice(vehicle) * (config.porcentagem_venda / 100)
        state, message = config.trySellVehicle(source,user_id,vehicle,price)
        if state then
            removeUserVehicle(user_id,vehicle)
            addEstoque(vehicle)
        end
    end
    local identity = vRP.getUserIdentity(user_id)
    SendWebhookMessage(webhookcompravendacarro,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[VENDEU]: "..vehicle.." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
    return state, message
end

function hasVehicle(user_id,vehicle)
    if user_id and vehicle and userVehicles[user_id] then
        for _,veh in ipairs(userVehicles[user_id]) do 
            if veh.vehicle == vehicle then
                return true
            end
        end
    end
    return false
end

function addUserVehicle(user_id,vehInfo)
    if user_id and userVehicles[user_id] then
        print(vehInfo.price)
        print(json.encode(vehInfo))
        local veh = { 
            vehicle = vehInfo.name, price = vehInfo.price * (config.porcentagem_venda / 100),
            modelo = vehInfo.modelo, capacidade = vehInfo.capacidade,

        }
        table.insert(userVehicles[user_id], veh)
    end
end

function removeUserVehicle(user_id,vehicle)
    if user_id and vehicle and userVehicles[user_id] then
        for i,veh in ipairs(userVehicles[user_id]) do
            if veh.vehicle == vehicle then
                table.remove(userVehicles[user_id], i)
                return
            end
        end
    end
end

function removeEstoque(vehicle,qtd)
    if vehicle then
        local qtd = qtd or 1
        for i,veh in ipairs(conceVehicles) do 
            if vehicle == veh.vehicle then
                conceVehicles[i].estoque = conceVehicles[i].estoque - qtd
                qtd = conceVehicles[i].estoque
                if conceVehicles[i].estoque <= 0 then
                    table.remove(conceVehicles, i)
                    qtd = 0
                end
                Citizen.CreateThread(function()
                    vRP.execute("nation_conce/removeEstoque", { vehicle = vehicle, estoque = qtd })
                end)
                return true
            end
        end
    end
    return false
end

function addEstoque(vehicle,qtd)
    if vehicle then
        local qtd = qtd or 1
        for i,veh in ipairs(conceVehicles) do 
            if vehicle == veh.vehicle then
                conceVehicles[i].estoque = conceVehicles[i].estoque + qtd
                qtd = conceVehicles[i].estoque
                Citizen.CreateThread(function()
                    vRP.execute("nation_conce/addEstoque", { vehicle = vehicle, estoque = qtd })
                end)
                return true
            end
        end
        -- local vehInfo = vRP.vehicleGlobal(vehicle)
        -- -- local vehInfo = func.getVehicleInfo(vehicle, vehList)
        -- if vehInfo then

            conceVehicles[#conceVehicles+1] = { 
                vehicle = vehicle, price = exports['nyo_modules']:getVehiclePrice(vehicle), modelo = exports['nyo_modules']:getVehicleName(vehicle), 
                capacidade = exports['nyo_modules']:getVehicleTrunk(vehicle), name = exports['nyo_modules']:getVehicleType(vehicle), estoque = qtd
            }
            Citizen.CreateThread(function()
                local isVehicleInConce = #vRP.query("nation_conce/isVehicleInConce",{ vehicle = vehicle }) > 0
                if isVehicleInConce then
                    vRP.execute("nation_conce/addEstoque", { vehicle = vehicle, estoque = qtd })
                else
                    vRP.execute("nation_conce/addVehicle", { vehicle = vehicle, estoque = qtd })
                end
            end)
            return true
        -- end
    end
    return false
end


function func.getMyVehicles(force)
    local source = source
    local user_id = vRP.getUserId(source)
    local myVehicles = {}
    if force or not userVehicles[user_id] then
        local data = vRP.query("nation_conce/getMyVehicles", {user_id = user_id})
        for _,veh in ipairs(data) do
            local vehInfo = vRP.vehicleGlobal(veh.vehicle)
            -- local vehInfo = func.getVehicleInfo(veh.vehicle,vehList)
            if vehInfo then
                myVehicles[#myVehicles+1] = { 
                    vehicle = veh.vehicle, price = exports['nyo_modules']:getVehiclePrice(vehicle) * (config.porcentagem_venda / 100), modelo = exports['nyo_modules']:getVehicleName(veh.vehicle), 
                    capacidade = exports['nyo_modules']:getVehicleTrunk(veh.vehicle), name = exports['nyo_modules']:getVehicleName(veh.vehicle)
                    -- vehicle = vehInfo.name, price = 0,
                    -- modelo = vehInfo.modelo, capacidade = vehInfo.capacidade, 
                }
            end
        end
    else
        return userVehicles[user_id]
    end
    userVehicles[user_id] = myVehicles
    return myVehicles
end

function func.testDrive(vehicle)
    local source = source
    local user_id = vRP.getUserId(source)
    local state, message, vehInfo = false, "erro inesperado", {}
    -- vehInfo =  vRP.vehicleGlobal(vehicle)
    -- -- vehInfo = func.getVehicleInfo(vehicle,vehList)
    -- if vehInfo then
    --     state, message = config.tryTestDrive(source,user_id,vehInfo)
    -- end
    if source and user_id then
		local price = parseInt(exports['nyo_modules']:getVehiclePrice(vehicle) * (config.porcentagem_testdrive / 100))
		return true, "deseja pagar <b>$ "..vRP.format(price).."</b> para realizar o test drive em um(a) <b>"..exports['nyo_modules']:getVehicleName(vehicle).."</b> ?"
	end
    return state, message
end

function func.payTest(vehicle)
    local source = source
    local user_id = vRP.getUserId(source)
    local state, message, vehInfo, price = false, "erro inesperado", {}, 0
    -- vehInfo = func.getVehicleInfo(vehicle,vehList)
    -- vehInfo = vRP.vehicleGlobal(vehicle)
    -- if vehInfo then
    --     state, message, price = config.payTest(source,user_id,vehInfo)
    -- end
	if source and user_id  then
		local price = parseInt(exports['nyo_modules']:getVehiclePrice(vehicle) * (config.porcentagem_testdrive / 100))
		if vRP.tryFullPayment(user_id, price) then
			-- srv = Proxy.getInterface("ws-bank")
			-- srv.register_trans(user_id,"Test drive em veiculo",price)
			return true, "sucesso!", price
		else
			return false, "falha no pagamento"
		end
	end
    return state, message, price
end

function func.rentVehicle(vehicle)
    local source = source
    local user_id = vRP.getUserId(source)
    local state, message, vehInfo = false, "erro inesperado", {}
    local estoque = getVehicleEstoque(vehicle)
    if estoque <= 0 then
        return false, "veículo fora de estoque"
    elseif hasVehicle(user_id,vehicle) then
        return false, "veículo já possuído"
    end
    
    vehInfo = vRP.vehicleGlobal(vehicle)
    -- vehInfo = func.getVehicleInfo(vehicle,vehList)
    if vehInfo then
        state, message = config.tryRentVehicle(source,user_id,vehInfo)
    end
    return state, message
end

function func.payRent(vehicle)
    local source = source
    local user_id = vRP.getUserId(source)
    local state, message, vehInfo = false, "erro inesperado", {}
    vehInfo = vRP.vehicleGlobal(vehicle) 
    -- vehInfo = func.getVehicleInfo(vehicle,vehList)
    if vehInfo then
        state, message = config.tryPayRent(source,user_id,vehInfo)
    end
    return state, message
end

function func.hasPermission()
    local source = source
    local user_id = vRP.getUserId(source)
    if config.openconce_permission then
        return vRP.hasPermission(user_id, config.openconce_permission)
    end
    return true
end

function func.chargeBack(price)
    local source = source
    local user_id = vRP.getUserId(source)
    if config.chargeBack then
        config.chargeBack(source,user_id,parseInt(price))
    end
end


local manages = {
    ["update"] = function(source) 
        getDbVehicles()
        TriggerClientEvent("Notify",source,"sucesso","Concessionária atualizada com sucesso!") 
    end,
    ["add"] = function(source,vehicle,qtd)
        local qtd = parseInt(qtd)
        if qtd and qtd > 0 then
            local vehInfo = config.getVehicleInfo(vehicle)
            if vehInfo then
                if addEstoque(vehicle,qtd) then
                    TriggerClientEvent("Notify",source,"sucesso","Adicionado(s) <b>"..qtd.." "..vehInfo.modelo.."</b> à concessionária!") 
                else
                    TriggerClientEvent("Notify",source,"negado","Erro inesperado.")
                end
            else
                TriggerClientEvent("Notify",source,"negado","Veículo não identificado.")
            end
        else
            TriggerClientEvent("Notify",source, "negado", "Quantidade inválida.")
        end
    end,
    ["remove"] = function(source,vehicle,qtd)
        local qtd = parseInt(qtd)
        if qtd and qtd > 0 then
            local vehInfo = config.getVehicleInfo(vehicle)
            if vehInfo then
                if removeEstoque(vehicle,qtd) then
                    TriggerClientEvent("Notify",source,"sucesso","Removido(s) <b>"..qtd.." "..vehInfo.modelo.."</b> da concessionária!") 
                else
                    TriggerClientEvent("Notify",source,"negado","Erro inesperado.")
                end
            else
                TriggerClientEvent("Notify",source,"negado","Veículo não identificado.")
            end
        else
            TriggerClientEvent("Notify",source, "negado", "Quantidade inválida.")
        end
        
    end
}

function func.manageConce(mode,vehicle,qtd)
    local source = source
    local user_id = vRP.getUserId(source)
    if mode and vehicle and qtd and vRP.hasPermission(user_id,config.updateconce_permission) then
        if manages[mode] then
            manages[mode](source,vehicle,qtd)
        end
    end 
end


RegisterCommand('conce',function(source)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,config.updateconce_permission) then
        fclient.showAdminMenu(source)
    end
end)
