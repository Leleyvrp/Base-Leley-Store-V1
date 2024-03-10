NyoModules.registerFunctions(function()

    Tunnel = module("vrp","lib/Tunnel")
    Proxy = module("vrp","lib/Proxy")
    Tools = module("vrp","lib/Tools")
    vRP = Proxy.getInterface("vRP")
    vRPclient = Tunnel.getInterface("vRP")
    idgens = Tools.newIDGenerator()

    -- ------------------------------ --
    -- DATABASE FUNCTIONS
    -- ------------------------------ --

    local DB = { sync = {}, async = {} }

    DB.async.prepare = function(name, query)
        return vRP._prepare(name, query)
    end 
    
    DB.sync.prepare = function(name, query)
        return vRP.prepare(name, query)
    end
    
    DB.async.execute = function(name, param)
        return vRP._execute(name, param)
    end
    
    DB.sync.execute = function(name, param)
        return vRP.execute(name, param)
    end
    
    DB.async.query = function(name, param, cb)
        CreateThread(function()
            local rows = vRP.query(name, param)
            cb(rows)
        end)
    end
    
    DB.sync.query = function(name, param)
        return vRP.query(name, param)
    end



    -- ------------------------------ --
    -- ITEM LIST
    -- ------------------------------ --
    local CFGItens = module('nxgroup_inventario', 'itens')

    RPC.addHandler('core-getCFGItens', function()
        return CFGItens
    end)



    -- ------------------------------ --
    -- CLIENT PERMISSIONS
    -- ------------------------------ --
    local CFGGroups = module('vrp', 'cfg/groups').groups

    RPC.addHandler('core-getPermissions', function(src)
        local user_id = NyoModulesGlobalFunctions.getUserId(src)
        local groups = vRP.getUserGroups(user_id)
        local permissions = {}
        for group,state in pairs(groups) do
            if state and CFGGroups[group] then
                for k,v in pairs(CFGGroups[group]) do
                    if k ~= '_config' then
                        permissions[v] = true
                    end
                end
            end
        end
        local rdata = {}
        for k,v in pairs(permissions) do
            table.insert(rdata, k)
        end
        return rdata
    end)

    AddEventHandler('vRP:playerJoinGroup', function(user_id, group, gtype)
        local src = vRP.getUserSource(user_id)
        local permissions = {}
        if CFGGroups[group] then
            for k,v in pairs(CFGGroups[group]) do
                if k ~= '_config' then
                    table.insert(permissions, v)
                end
            end
        end
        TriggerClientEvent('core-addPermissions', src, permissions)
    end)

    AddEventHandler('vRP:playerLeaveGroup', function(user_id, group, gtype)
        local src = vRP.getUserSource(user_id)
        local rPermissions = {}
        local groups = vRP.getUserGroups(user_id)

        if CFGGroups[group] then
            for k,v in pairs(CFGGroups[group]) do
                if k ~= '_config' then
                    rPermissions[v] = true
                end
            end
        end

        for _group,state in pairs(groups) do
            if state and CFGGroups[_group] then
                for k,v in pairs(CFGGroups[_group]) do
                    if k ~= '_config' then
                        rPermissions[v] = false
                    end
                end
            end
        end

        local rdata = {}
        for k,v in pairs(rPermissions) do
            if v then table.insert(rdata,k) end
        end

        TriggerClientEvent('core-remPermissions', src, rdata)
    end)


    -- ------------------------------ --
    -- FUNCTIONS
    -- ------------------------------ --

    return {

        DB = DB,

        getUserId = vRP.getUserId,
        getUserSource = vRP.getUserSource,
        getUserIdentity = vRP.getUserIdentity,
        getHasPermission = vRP.hasPermission,
        getPlayersByPermission = vRP.getUsersByPermission,
        notify = function(source, titulo, mensagem, cor, tempo)
            nTitulo = titulo or ''
            nMensagem = mensagem or ''
            nCor = cor or ''
            nTempo = tempo or 5000
            if source then 
                if NyoModules.isModuleActive('nyo_notify') then
                    TriggerClientEvent("nyo_notify",source,nTitulo,nMensagem,nCor,nTempo)
                else
                    local tipo = 'importante'
                    if cor == '#00FF00' then
                        tipo = 'sucesso'
                    elseif cor == '#FF0000' then
                        tipo = 'erro'
                    elseif cor == '#FFD700' then
                        tipo = 'importante'
                    end
                    TriggerClientEvent("Notify", source, tipo, nMensagem, nTempo)
                end
            end
        end,
        getUserMoney = vRP.getMoney,
        tryPayment = function(user_id, amount, paymentType)
            if paymentType == 1 then
                return vRP.tryPayment(user_id, amount)
            elseif paymentType == 2 then
                return vRP.tryFullPayment(user_id, amount)
            end
        end,
        giveMoney = vRP.giveMoney,
        checkInventoryWeight = function(user_id, item, qtd)
            return vRP.getInventoryWeight(user_id)+vRP.getItemWeight(item)*tonumber(qtd) <= vRP.getInventoryMaxWeight(user_id) 
        end,
        checkInventoryWeight2 = function(user_id, itens, removeItens)
            local minusAmount = 0
            local addamount = 0
            for k,v in pairs(removeItens) do
                minusAmount += vRP.getItemWeight(v[1]) * v[2]
            end
            for k,v in pairs(itens) do
                addamount += vRP.getItemWeight(v[1]) * v[2]
            end
            return vRP.getInventoryWeight(user_id)-minusAmount+addamount <= vRP.getInventoryMaxWeight(user_id) 
        end,
        getInventoryItemAmount = vRP.getInventoryItemAmount,
        tryGetInventoryItem = vRP.tryGetInventoryItem,
        giveItem = vRP.giveInventoryItem,
        tryItem = vRP.tryGetInventoryItem,
        itemName = vRP.itemNameList,
        alertPolice = function(source,x,y,z,text)
            vRPclient.playSound(source,"Oneshot_Final","MP_MISSION_COUNTDOWN_SOUNDSET")
            local blip = vRPclient.addBlip(source,x,y,z,1,59,"Roubo em andamento",0.5,true)
            TriggerClientEvent('chatMessage',source,"COPOM:",{5,144,242},text)
            SetTimeout(20000,function() vRPclient.removeBlip(source,blip) end)
        end,
        request = vRP.request
    }

end)