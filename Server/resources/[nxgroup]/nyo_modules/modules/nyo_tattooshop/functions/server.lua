NyoModules.registerFunctions('vrpex',function ()

    local tattooShopGetData = function(user_id)
        return vRP.getUData(user_id,"nyo:tattoos")
    end
    
    AddEventHandler("vRP:playerSpawn",function(user_id,source,first_spawn)
        if first_spawn then
            local data = tattooShopGetData(user_id)
            local custom = json.decode(data) or {}
            SafeEvents.triggerClient('tattoshop:applyTattos', source, custom)
        end
    end)

    return {
        tattooShopGetData = tattooShopGetData,
        tattooShopSetData = function(user_id, data)    
            vRP.setUData(user_id,"nyo:tattoos",json.encode(data))
        end
    }
end)