NyoModules.registerNyoModule('nyo_elevator', function()

    local functions = NyoModules.getModuleFunctions()
    
    NyoModulesClient.registerInterface(1)

    local elevadorLocs = {}

    NyoModulesClient.registerNUICallback("elevadorMove", function(data, cb)
        local i = data.i    
        local ped = PlayerPedId()
        NyoModulesClient.closeUI()         
        DoScreenFadeOut(1000)
        functions.onElevatorUse(elevadorLocs[i].coord, elevadorLocs[i].heading)
        Wait(1000)
        SetEntityCoords(ped, elevadorLocs[i].coord, false, false, false, true)
        SetEntityHeading(ped, elevadorLocs[i].heading)
        Wait(1000)
        SetNuiFocus(false, false)
        NyoModulesClient.enableMarkerType(1)
        DoScreenFadeIn(1000)
        elevadorLocs = {}
    end)

    NyoModulesClient.registerNUICallback("close",function(data,cb)
        NyoModulesClient.enableMarkerType(1)
        ped = PlayerPedId()
        SetNuiFocus(false, false)
        ClearPedTasks(ped)
        SetNuiFocus(false, false)
        FreezeEntityPosition(ped, false)
        SetEntityInvincible(ped, false)
    end)

    NyoModulesClient.registerKeyPress(function(v,k)
        NyoModulesClient.disableMarkerType(1)
        exports.smartphone:closeSmartphone()
        local gconfig = NyoModulesConfigs[v.config]
        elevadorLocs = gconfig.locs
        SetNuiFocus(true, true)
        NyoModulesClient.openUI({ locs = gconfig.locs, elevadorName = gconfig.eName})
    end)

end)