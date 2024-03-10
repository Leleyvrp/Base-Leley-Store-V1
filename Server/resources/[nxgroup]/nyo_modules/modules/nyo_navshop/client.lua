NyoModules.registerNyoModule('nyo_navshop', function()
    
    NyoModulesClient.registerInterface(1)

    local navShopConfig = {} 

    NyoModulesClient.registerNUICallback("close",function(data,cb)
        NyoModulesClient.enableMarkerType(1)
        local ped = PlayerPedId()
        SetNuiFocus(false, false)
        ClearPedTasks(ped)
    end)

    NyoModulesClient.registerNUICallback("navShopNuiAction", function(data,cb)
        SafeEvents.triggerServer('navShopAction', navShopConfig, data.index, data.item)
    end)

    NyoModulesClient.registerKeyPress(function(v,k)
        NyoModulesClient.disableMarkerType(1)
        exports.smartphone:closeSmartphone()
        local config = NyoModulesConfigs[v.config].shopConfig
        navShopConfig = config
        SetNuiFocus(true, true)
        NyoModulesClient.openUI({config = config})
    end)

end)