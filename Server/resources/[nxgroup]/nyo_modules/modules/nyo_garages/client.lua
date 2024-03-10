local module = 'nyo_garages'

NyoModules.registerNyoModule(module, function()

    local functions = NyoModules.getModuleFunctions()
    local UIOpen = false
    local currentGarageType

    NyoModulesClient.registerInterface(1)

    SendNUIMessage({
        action = 'update-garage',
        reezets = true
    })

    local vehicleClasses = {
        [0] = "carro",
        [1] = "carro",
        [2] = "carro",
        [3] = "carro",
        [4] = "carro",
        [5] = "carro",
        [6] = "carro",
        [7] = "carro",
        [8] = "carro",
        [9] = "carro",
        [10] = "carro",
        [11] = "carro",
        [12] = "carro",
        [13] = "carro",
        [14] = "barco",
        [15] = "helicoptero",
        [16] = "helicoptero",
        [17] = "carro",
        [18] = "carro",
        [19] = "carro",
        [20] = "carro",
        [21] = "carro",
    }
    
    local activeGarage, spawnCoordinates, activeVehicles, currentGarageConfig

    local garageTypesNames = {
        home = 'Garagem de Casa',
        public = 'Garagem Pública',
        work = 'Garagem de Trabalho'
    }

    function openNuiGarage(garageId,garageConfig,spawnCoords, garageV)
        local vehicles = RPC.trigger('garage-open',garageId and NyoModulesCoords[garageId] or garageV)

        if vehicles then
            activeGarage = garageId
            currentGarageConfig = garageConfig
            spawnCoordinates = spawnCoords

            local filteredVehicles   = {}
            local categoryTypes      = {}
            local selectedCategories = {}

            for k,v in pairs(vehicles) do
                if k ~= 'garage' then
                    local vehicleClass = GetVehicleClassFromName(v.hash)
                    local className = vehicleClasses[vehicleClass]

                    if garageConfig.garagemMenu[className] then

                        if not selectedCategories[className] then
                            categoryTypes[#categoryTypes  + 1] = className
                            selectedCategories[className] = true
                        end

                        v.category = className
                        v.maxSpeed = math.floor(GetVehicleModelEstimatedMaxSpeed(v.hash) * 3.6)
                        v.maxBraking = GetVehicleModelMaxBraking(v.hash)
                        v.maxTraction = GetVehicleModelMaxTraction(v.hash)
                        v.class = GetLabelText('VEH_CLASS_'..vehicleClass)

                        filteredVehicles[v.vehicle] = v

                    end
                end

            end

            activeVehicles = filteredVehicles
            
            UIOpen = true
            NyoModulesClient.openUI({
                type = 'garage',
                vehicles = filteredVehicles,
                categoryTypes = categoryTypes,
                garageType = garageTypesNames[garageConfig.garagemType],
            })
            SetNuiFocus(true,true)

        else
            NyoModulesClient.enableMarkerType(1)
            inShop = false
        end

    end

    NyoModulesClient.registerKeyPress(function(v,k)
        NyoModulesClient.disableMarkerType(1)
        currentGarageType = NyoModulesConfigs[v.config].garagemConfig.garagemType
        openNuiGarage(k, NyoModulesConfigs[v.config].garagemConfig, v.spawn)
    end)

    NyoModules.registerCommand(function(v)
        openNuiGarage(nil, NyoModulesConfigs[v.config].garagemConfig, { vec4(plyCoords.x, plyCoords.y, plyCoords.z, GetEntityHeading(plyPed)) }, v)
    end)

    NyoModulesClient.registerNUICallback('garageClose', function(data,cb)
        NyoModulesClient.enableMarkerType(1)
        SetNuiFocus(false,false)
        NyoModulesClient.closeUI()
        TriggerServerEvent('nyo_module:close_garage')
        inShop = false
        UIOpen = false
        activeGarage, spawnCoordinates, activeVehicles, currentGarageConfig = nil,nil,nil,nil
        cb({})
    end)

    function garageClose()
        NyoModulesClient.enableMarkerType(1)
        SetNuiFocus(false,false)
        NyoModulesClient.closeUI()
        TriggerServerEvent('nyo_module:close_garage')
        inShop = false
        UIOpen = false
        activeGarage, spawnCoordinates, activeVehicles, currentGarageConfig = nil,nil,nil,nil
    end

    NyoModulesClient.registerNUICallback('garage_pay_tax', function(data,cb)
        local lang = NyoModules.getModuleLanguage()
        local success = RPC.trigger('garage-taskPayVehicleTax', data.vehicle)
        cb({
            success = success
        })
        if not success then
            NyoModulesGlobalFunctions.notify("Negado", lang.insufficientMoneyNotify, "#FF0000",  8000, "fa-heartbeat")
        end
    end)

    NyoModulesClient.registerNUICallback('garage_pay_insurance', function(data,cb)
        local lang = NyoModules.getModuleLanguage()
        local success = RPC.trigger('garage-taskPayInsurance', data.vehicle, currentGarageType == 'work')
        cb({
            success = success
        })
        if not success then
            NyoModulesGlobalFunctions.notify("Negado", lang.insufficientMoneyNotify, "#FF0000", 8000, "fa-heartbeat")
        end
    end)

    NyoModulesClient.registerNUICallback('garage_remove_detention', function(data,cb)
        local lang = NyoModules.getModuleLanguage()
        local success = RPC.trigger('garage-taskRemoveFromDetention', data.vehicle)
        cb({
            success = success
        })
    end)


    NyoModulesClient.registerNUICallback('spawn_vehicle', function(data,cb)
            local lang = NyoModules.getModuleLanguage()
            local config = NyoModulesConfigs['garagesGeneralConfig']
            local spawnCoords

            for k,v in pairs(spawnCoordinates) do
                if GetClosestVehicle(v.x, v.y, v.z, 3.0, 0, 71) == 0 then
                    spawnCoords = v
                    break
                end
            end
        
            if not spawnCoords then
                cb({success = false})
                NyoModulesGlobalFunctions.notify("Negado", "Todas vagas estão ocupadas", "#FF0000",  8000, "fa-heartbeat")

                return
            end

            local success,  netVehId, custom, damage, extras, livery, plate, engine, body, fuel, modelName, mods = RPC.trigger('garage-spawnVehicle',data.vehicle, spawnCoords)

            cb({success = success, netVehId = netVehId, plate = plate})

            if success then

                while not NetworkDoesEntityExistWithNetworkId(netVehId) do
                    Wait(100)
                end

                local entity = NetworkGetEntityFromNetworkId(netVehId)

                while not DoesEntityExist(entity) do
                    Wait(100)
                end

                if not IsEntityAVehicle(entity) then
                    return
                end

                Wait(100)

                local localVehId = NetToVeh(netVehId)

                SetVehicleModKit(localVehId,0)
                SetVehicleNumberPlateText(localVehId, plate)
                SetVehicleEngineHealth(localVehId, engine + 0.0)
                SetVehicleBodyHealth(localVehId, body + 0.0)
                SetVehicleFuelLevel(localVehId, fuel + 0.0)

                SetVehicleIsConsideredByPlayer(localVehId, true)
                SetVehicleIsStolen(localVehId, false)
                SetVehicleHasBeenOwnedByPlayer(localVehId, true)
                SetVehicleNeedsToBeHotwired(localVehId,false)
                SetVehicleOnGroundProperly(localVehId)
                SetEntityAsMissionEntity(localVehId,true,true)
                SetVehRadioStation(localVehId,"OFF")
                SetVehicleEngineOn(localVehId, false, true, true)
                SetVehicleDoorsLocked(localVehId, 2)

                local ped = GetPedInVehicleSeat(localVehId, -1)
                if ped ~= 0 then
                    NetworkRequestControlOfEntity(ped)
                    while not NetworkHasControlOfEntity(ped) do
                        Wait(100)
                    end
                    SetEntityAsNoLongerNeeded(ped)
                    SetEntityAsMissionEntity(ped, false)
                    DeleteEntity(ped)
                end

                if extras then
                    for k,v in pairs(extras) do
                        SetVehicleExtra(localVehId, k, not v)
                    end
                end

                if livery then
                    SetVehicleLivery(localVehId, livery)
                end

                if NyoModules.isModuleActive('nyo_bennys') then -- bennys
                    if custom then
                        TriggerServerEvent('nyo_modules:applyVehicleCustomization', netVehId, custom)
                    end
                end

                if not custom and mods then
                    if mods.wheelType then
                        SetVehicleWheelType(localVehId,mods.wheelType)
                    end
                    for i = 0, 49 do
                        if mods[i] then
                            if type(mods[i]) == "boolean" then
                                ToggleVehicleMod(localVehId,i,mods[i])
                            else
                                SetVehicleMod(localVehId,i,mods[i])
                            end
                        end
                    end
                    if mods.neon then
                        for i = 0, 3 do
                            SetVehicleNeonLightEnabled(localVehId, i, mods.neon[tostring(i)])
                        end
                        SetVehicleNeonLightsColour(localVehId,mods.neon.color.r,mods.neon.color.g,mods.neon.color.b)
                    end
                    if mods.primaryPaintType then
                        SetVehicleModColor_1(localVehId, mods.primaryPaintType, 0, mods.pearlescentColour or 0)
                    end
                    if mods.secondaryColour then
                        SetVehicleModColor_2(localVehId, mods.secondaryPaintType, 0)
                    end
                    if mods.primaryColour then
                        SetVehicleCustomPrimaryColour(localVehId, mods.primaryColour.r, mods.primaryColour.g, mods.primaryColour.b)
                    end
                    if mods.secondaryColour then
                        SetVehicleCustomSecondaryColour(localVehId, mods.secondaryColour.r, mods.secondaryColour.g, mods.secondaryColour.b)
                    end
                    if mods.tyreSmokeColour then
                        SetVehicleTyreSmokeColor(localVehId, mods.tyreSmokeColour.r, mods.tyreSmokeColour.g, mods.tyreSmokeColour.b)
                    end
                    if mods.pearlescentColour or mods.wheelColour then
                        SetVehicleExtraColours(localVehId, mods.pearlescentColour or 0, mods.wheelColour or 0)
                    end
                    if mods.windowTint then
                        SetVehicleWindowTint(localVehId, mods.windowTint)
                    end
                    if mods.xenonColour then
                        SetVehicleXenonLightsColor(localVehId, mods.xenonColour)
                    end
                    if mods.plate then
                        SetVehicleNumberPlateTextIndex(localVehId, mods.plate)
                    end
                end
                
                if damage then

                    if damage.doors then
                        for i = 0, 5 do
                            if damage.doors[tostring(i)] then
                                SetVehicleDoorBroken(localVehId,i,true)
                            end
                        end
                    end

                    if damage.windows then
                        for i = 0, 7 do
                            if damage.windows[tostring(i)] then
                                SmashVehicleWindow(localVehId, i)
                            end
                        end
                    end

                    if damage.tyres then

                        for i = 0, 5 do
                            if damage.tyres[tostring(i)] then
                                SetVehicleTyreBurst(localVehId, i, true, 1000)
                            end
                        end

                        if damage.tyres[45] then
                            SetVehicleTyreBurst(localVehId, 45, true, 1000)
                        end

                        if damage.tyres[47] then
                            SetVehicleTyreBurst(localVehId, 47, true, 1000)
                        end

                    end

                    if damage.dirtLevel then
                        SetVehicleDirtLevel(localVehId, damage.dirtLevel)
                    end
                    
                end

                functions.onVehicleSpawn(localVehId, netVehId, custom, damage, extras, livery, plate, engine, body, fuel, modelName, mods)

            end
        garageClose()
    end)

    NyoModulesClient.registerNUICallback('store_vehicle', function(data,cb)
        if timeout then return cb({}) end
        timeout = true
        local lang = NyoModules.getModuleLanguage()

        local ped = PlayerPedId()
        local cds = GetEntityCoords(ped)

        local success, error, engine, body, fuel, damage = RPC.trigger('garage-deleteVehicle',data.vehicle, currentGarageConfig.garagemType == 'work', cds, currentGarageConfig.deleteVehicleDistance or 30.0)

        cb({ 
            success = success,
            engine = engine,
            body = body,
            fuel = fuel,
            exploded = damage and damage.exploded or false
        })
        Wait(1500)
        timeout = false
    end)


    RPC.addHandler('garage-getVehicleDamage', function(netid)
        local veh = NetToVeh(netid)
        local damage = { doors = {}, windows = {}, tyres = {}}

        for i = 0, 5 do
            damage.doors[tostring(i)] = IsVehicleDoorDamaged(veh,i)
        end

        if not AreAllVehicleWindowsIntact(veh) then
            for i = 0, 7 do
                damage.windows[tostring(i)] = IsVehicleWindowIntact(veh, i)
            end
        end

        for i = 0, 5 do
            damage.tyres[tostring(i)] = IsVehicleTyreBurst(veh,i,false)
        end

        damage.tyres['45'] = IsVehicleTyreBurst(veh,45,false)
        damage.tyres['47'] = IsVehicleTyreBurst(veh,47,false)

        local engine = math.floor(GetVehicleEngineHealth(veh))
        local body = math.floor(GetVehicleBodyHealth(veh))
        local fuel = math.floor(GetVehicleFuelLevel(veh))

        damage.exploded = engine <= -100
        damage.dirtLevel = GetVehicleDirtLevel(veh)
        damage.petrolTankHealth = GetVehiclePetrolTankHealth(veh)
        damage.oilLevel = GetVehicleOilLevel(veh)

        return engine, body, fuel, damage
    end)

    RegisterCommand("nyo_module:vehicleLock2", function()
        local ped = plyPed
        local cds = plyCoords
        local veh = GetClosestVehicleFromPlayer(5.0)
        if veh and veh ~= 0 then
            local vidas = GetEntityHealth(ped)
			if vidas > 101 then
                console.debug('^3[ GARAGES ] ^7Vehicle locked / unlocked')
                local vehLock = GetVehicleDoorLockStatus(veh)
                local plate = GetVehicleNumberPlateText(veh)
                local success = RPC.trigger("nyo_module:setVehicleLock", VehToNet(veh), vehLock == 1 and 2 or 1,plate)
                if success and functions.onVehicleLock then
                    functions.onVehicleLock(veh, vehLock == 1)
                end
                Wait(2500)
            end
        else
            console.debug('^3[ GARAGES ] ^7Did not find vehicle to lock')
        end
    end)

    RegisterCommand("chave", function(source,args,rawCommand)
        local veh = GetClosestVehicleFromPlayer(5.0)
        if veh and veh ~= 0 then
            local plate = GetVehicleNumberPlateText(veh)
            if args[1] == "add" and args[2] then
                RPC.trigger("nyo_module:chave", VehToNet(veh),args[2],plate)
            elseif args[1] == "remove" then
                RPC.trigger("nyo_module:remove", VehToNet(veh),plate)
            end
        end
    end)

    RegisterKeyMapping("nyo_module:vehicleLock2", 'Trancar / Destrancar veículos', 'KEYBOARD', "l")

    SafeEvents.register('garage-openSellVehiclesNUI', function(vehicles)
        if not UIOpen then
            UIOpen = true
            local filteredVehicles   = {}
            local categoryTypes      = {}
            local selectedCategories = {}

            for k,v in pairs(vehicles) do
                if k ~= 'garage' then
                    local vehicleClass = GetVehicleClassFromName(v.hash)
                    local className = vehicleClasses[vehicleClass]

                    if not selectedCategories[className] then
                        categoryTypes[#categoryTypes  + 1] = className
                        selectedCategories[className] = true
                    end

                    v.category = className
                    v.maxSpeed = math.floor(GetVehicleModelEstimatedMaxSpeed(v.hash) * 3.6)
                    v.maxBraking = GetVehicleModelMaxBraking(v.hash)
                    v.maxTraction = GetVehicleModelMaxTraction(v.hash)
                    v.class = GetLabelText('VEH_CLASS_'..vehicleClass)

                    filteredVehicles[v.vehicle] = v

                end

            end
            NyoModulesClient.openUI({
                type = 'sellNUI',
                vehicles = filteredVehicles,
                categoryTypes = categoryTypes,
                garageType = 'Venda de veículos',
            })
            SetNuiFocus(true, true)
        end
    end)

    NyoModulesClient.registerNUICallback('sell_vehicle', function(data,cb)
        local ped, player = GetClosestPlayerFromPlayer(5.0)
        if player then
            SetNuiFocus(false, false)
            local success = RPC.trigger('garage-sellVehicle', data, GetPlayerServerId(player))
            if success then
                NyoModulesClient.closeUI()
            else       
                SetNuiFocus(true, true)
            end
        end
    end)

    local garages = {}

    garages.getVehicleList = function()
        return NyoModulesConfigs['garagesGeneralConfig'].vehicleList
    end

    garages.getVehicleInfo = function(model)
        local _model = type(model)
        local modelstr = ''
        if type(model) == 'string' then
            modelstr = model
            model = GetHashKey(model)
        end
        local info = NyoModulesConfigs['garagesGeneralConfig'].vehicleList[model]
        local displayName = GetDisplayNameFromVehicleModel(model)
        if not info then
            info = {
                modelname = displayName:lower(),
                name = GetLabelText(displayName),
                price = 0,
                trunk = 0,
                banned = false, 
                type = 'UNKNOWN'
            }
        end
        return info
    end

    garages.getVehiclePrice = function(model)
        local _model = type(model)
        if type(model) == 'string' then
            model = GetHashKey(model)
        end
        return NyoModulesConfigs['garagesGeneralConfig'].vehicleList[model] and NyoModulesConfigs['garagesGeneralConfig'].vehicleList[model].price or 0
    end

    garages.getVehicleType = function(model)
        local _model = type(model)
        if type(model) == 'string' then
            model = GetHashKey(model)
        end
        return NyoModulesConfigs['garagesGeneralConfig'].vehicleList[model] and NyoModulesConfigs['garagesGeneralConfig'].vehicleList[model].type or 'UNKNOWN'
    end

    garages.getVehicleTrunk = function(model)
        local _model = type(model)
        if type(model) == 'string' then
            model = GetHashKey(model)
        end
        return NyoModulesConfigs['garagesGeneralConfig'].vehicleList[model] and NyoModulesConfigs['garagesGeneralConfig'].vehicleList[model].trunk or 0
    end

    garages.getVehicleName = function(model)
        local _model = type(model)
        if type(model) == 'string' then
            model = GetHashKey(model)
        end
        if NyoModulesConfigs['garagesGeneralConfig'].vehicleList[model] and NyoModulesConfigs['garagesGeneralConfig'].vehicleList[model].name then
            return NyoModulesConfigs['garagesGeneralConfig'].vehicleList[model].name
        end
        local displayName = GetDisplayNameFromVehicleModel(model)
        if displayName == 'CARNOTFOUND' then
            return 'UNKNOWN'
        end
        local name = GetLabelText(displayName)
        return name
    end

    garages.getVehicleModelName = function(model)
        return NyoModulesConfigs['garagesGeneralConfig'].vehicleList[model] and NyoModulesConfigs['garagesGeneralConfig'].vehicleList[model].modelname
    end

    garages.isVehicleBanned = function(model)
        local _model = type(model)
        if type(model) == 'string' then
            model = GetHashKey(model)
        end
        return NyoModulesConfigs['garagesGeneralConfig'].vehicleList[model] and NyoModulesConfigs['garagesGeneralConfig'].vehicleList[model].banned or false
    end

    exports('getVehicleList', garages.getVehicleList)
    exports('getVehicleInfo', garages.getVehicleInfo)
    exports('getVehiclePrice', garages.getVehiclePrice)
    exports('getVehicleType', garages.getVehicleType)
    exports('getVehicleTrunk', garages.getVehicleTrunk)
    exports('getVehicleName', garages.getVehicleName)
    exports('getVehicleModelName', garages.getVehicleModelName)
    exports('isVehicleBanned', garages.isVehicleBanned)

     -- Home Garages 
     SafeEvents.register('nyo_module:createHomeGaragem', function(gData)
        for k,v in pairs(gData) do 
            exports["nyo_modules"]:addCoords({
                showBlip = false,
                coord = vector3(tonumber(v.x), tonumber(v.y), tonumber(v.z)),
                heading = 359.29,
                config = 'home',
                homeName = v.name,
                spawn = {vector4(tonumber(v.x2), tonumber(v.y2), tonumber(v.z2), tonumber(v.h))}
              })
        end
    end)

end)