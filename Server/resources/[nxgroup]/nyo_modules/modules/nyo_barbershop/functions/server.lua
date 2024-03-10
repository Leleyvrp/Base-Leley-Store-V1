NyoModules.registerFunctions('vrpex',function() 

    local getBarberCustomization = function(user_id)
        return vRP.getUData(user_id,"currentCharacterMode")
    end

    RegisterNetEvent('disney-barbershop:init', function(user_id)
        local player = NyoModulesGlobalFunctions.getUserSource(user_id)
        if player then
            local value = getBarberCustomization(user_id)
            if value then
                local custom = json.decode(value) or {}
                SafeEvents.triggerClient('barbershop:init', player, custom)
            end
        end
    end)
    
    return {
        getBarberCustomization = getBarberCustomization,
        setBarberCustomization = function(user_id, data)
            vRP.setUData(user_id,"currentCharacterMode", json.encode(data))
        end
    }
end)