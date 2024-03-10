NyoModules.registerFunctions('vrpex',{
    getPlayerInventory = function(user_id)
        local data = vRP.getInventory(user_id)
        for k,v in pairs(data) do
            data[k].name = vRP.itemNameList(k)
        end
        return data
    end,
    progressBar = function(src, time, text)
        TriggerClientEvent('progress', src, time, text)
    end,
    onFailToProduceItens = function(reason, user_id, config, data)
        -- reason = "insufficientItems" || "insufficientSpaceInInventory"
        -- data = { category = string, quantity = int, item = string }
    end,
    onSuccessToProduceItens = function(user_id, config, data)
        -- data = { category = string, quantity = int, item = string }    
    end
})