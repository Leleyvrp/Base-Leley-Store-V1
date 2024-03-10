NyoModules.registerFunctions(function() 
    Tunnel = module("vrp","lib/Tunnel")
    Proxy = module("vrp","lib/Proxy")
    Tools = module("vrp","lib/Tools")
    vRP = Proxy.getInterface("vRP")
    vRPserver = Tunnel.getInterface("vRP")

    -- ------------------------------ --
    -- ITEM LIST
    -- ------------------------------ --

    if config.development then GlobalState.CFGItens = nil end

    local CFGItens = GlobalState.CFGItens
    if not CFGItens then
        RPC.triggerCallback('core-getCFGItens', function(data)
            CFGItens = data
            GlobalState.CFGItens = data
        end)
    end

    -- ------------------------------ --
    -- CLIENT PERMISSIONS
    -- ------------------------------ --

    if config.development then GlobalState.permissions = nil end
    if not GlobalState.permissions then
        local permissions = {}
        RPC.triggerCallback('core-getPermissions', function(data)
            for k,v in pairs(data) do
                permissions[v] = true
            end
            GlobalState.permissions = permissions
        end)
    end

    RegisterNetEvent("core-addPermissions", function(data)
        local permissions = GlobalState.permissions
        for k,v in pairs(data) do
            permissions[v] = true
        end
        GlobalState.permissions = permissions
    end)

    RegisterNetEvent("core-remPermissions", function(data)
        local permissions = GlobalState.permissions
        for k,v in pairs(data) do
            permissions[v] = false
        end
        GlobalState.permissions = permissions
    end)

    -- ------------------------------ --
    -- FUNCTIONS
    -- ------------------------------ --

    return {
        notify = function(titulo, mensagem, cor, tempo)

            nTitulo = titulo or ''
            nMensagem = mensagem or ''
            nCor = cor or ''
            nTempo = tempo or 5000

            if NyoModules.isModuleActive('nyo_notify') then
                TriggerEvent("nyo_notify",nCor, nTitulo, nMensagem,nTempo)
            else
                local tipo = 'importante'
                if cor == '#00FF00' then
                    tipo = 'sucesso'
                elseif cor == '#FF0000' then
                    tipo = 'erro'
                elseif cor == '#FFD700' then
                    tipo = 'importante'
                end
                TriggerEvent("Notify", tipo, nMensagem, nTempo)
            end

        end,
        itemName = function(index)
            return CFGItens.items[index] and CFGItens.items[index][1] or ''
        end
    }
end)