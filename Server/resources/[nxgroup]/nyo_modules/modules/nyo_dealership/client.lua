NyoModules.registerNyoModule('nyo_dealership', function()

    GlobalState.nyo_dealership = nil
    local nuiOpen = false
    local currentDealership
    local currentDealershipIndex
    local currentConfig
    local spawnedVehicle
    local currentVehicle
    local testDrive
    local dontDisableFocus
    local cam
    local resetCoord
    
    NyoModulesClient.registerInterface(1)

    SafeEvents.register('dealership-setVehicle', function(dealershipIndex, vehicle, amount)
        local data = GlobalState.nyo_dealership
        for k,v in pairs(data) do
            if v.index == dealershipIndex then
                for l,w in pairs(v.categories) do
                    for x,y in pairs(w.vehicles) do
                        if x == vehicle then
                            if amount > 0 then
                                data[k].categories[l].vehicles[x].amount = amount
                            else
                                data[k].categories[l].vehicles[x] = nil
                            end
                        end
                    end
                end
            end
        end
        GlobalState.nyo_dealership = data
        if nuiOpen then
            for k,v in pairs(currentDealership.categories) do
                if k ~= 'playerVehicles' then
                    for l,w in pairs(v.vehicles) do
                        if l == vehicle then
                            if amount > 0 then
                                currentDealership.categories[k].vehicles[l].amount = amount
                            else
                                currentDealership.categories[k].vehicles[l] = nil
                            end
                        end
                    end
                end
            end
            NyoModulesClient.sendNUIMessage('updateUI', {dealershipData = currentDealership, config = currentConfig.dealershipConfig})
        end
    end)

    NyoModules.onReady(function()
        if not GlobalState.nyo_dealership then
            RPC.triggerCallback('dealership-getVehicles', function(data)
                for k,v in pairs(data) do
                    for l,w in pairs(v.categories) do
                        for veh,info in pairs(w.vehicles) do
                            data[k].categories[l].vehicles[veh].maxSpeed = math.floor(GetVehicleModelEstimatedMaxSpeed(veh) * 3.6)
                            data[k].categories[l].vehicles[veh].maxBraking = GetVehicleModelMaxBraking(veh)
                            data[k].categories[l].vehicles[veh].maxTraction = GetVehicleModelMaxTraction(veh)
                            data[k].categories[l].vehicles[veh].maxSeats = GetVehicleModelNumberOfSeats(veh)
                        end
                    end
                end
                GlobalState.nyo_dealership = data
            end)
        end
    end)

    NyoModulesClient.registerKeyPress(function(v,k)
        local config = NyoModulesConfigs[v.config]
        resetCoord = v.coord
        dontDisableFocus = false
        currentDealership = GlobalState.nyo_dealership[v.config]
        currentDealershipIndex = v.config
        currentConfig = config
        if not currentDealership or not currentDealership.categories then
            return NyoModulesGlobalFunctions.notify('Erro', 'Ops, não foi possivel acessar a concessionaria.', "#FF0000", 5000)
        end        
        NyoModulesClient.disableMarkerType(1)
        exports.smartphone:closeSmartphone()
        nuiOpen = true
        if config.dealershipConfig.playerSell or config.dealershipConfig.playerVehicle then
            currentDealership.categories.playerVehicles = { vehicles = RPC.trigger('dealership-getPlayerVehicles')}
            for k,v in pairs(currentDealership.categories.playerVehicles.vehicles) do
                currentDealership.categories.playerVehicles.vehicles[k].maxSpeed = math.floor(GetVehicleModelEstimatedMaxSpeed(k) * 3.6)
                currentDealership.categories.playerVehicles.vehicles[k].maxBraking = GetVehicleModelMaxBraking(k)
                currentDealership.categories.playerVehicles.vehicles[k].maxTraction = GetVehicleModelMaxTraction(k)
                currentDealership.categories.playerVehicles.vehicles[k].maxSeats = GetVehicleModelNumberOfSeats(k)
            end
        end
        cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
        SetCamActive(cam, true)
        RenderScriptCams(true, true, 500, true, true)   
        SetCamCoord(cam, currentConfig.dealershipConfig.vehicleCamCords)
        PointCamAtCoord(cam, currentConfig.dealershipConfig.showroomVehicleCoords)
        NyoModulesClient.openUI({dealershipData = currentDealership, config = config.dealershipConfig})
        SetNuiFocus(true, true)
    end)

    NyoModulesClient.registerNUICallback('close', function(data,cb)
        nuiOpen =
        NyoModulesClient.enableMarkerType(1)
        if not dontDisableFocus then
            SetNuiFocus( false, false )
        end
        SetCamActive(cam, false)
        RenderScriptCams(false, true, 0, true, true)
        cam = nil
        dontDisableFocus = false
        if not testDrive then currentDealership = nil end
        if spawnedVehicle then DeleteEntity(spawnedVehicle); spawnedVehicle = nil end
        cb({})
    end)

    NyoModulesClient.registerNUICallback('setVehicle', function(data,cb)
        if spawnedVehicle then DeleteEntity(spawnedVehicle) end
        currentVehicle = data.vehicle
        local hash = GetHashKey(data.vehicle)
        RequestModel(hash)
        while not HasModelLoaded(hash) do
            Wait(0)
        end
        local veh = CreateVehicle(hash,currentConfig.dealershipConfig.showroomVehicleCoords.x,currentConfig.dealershipConfig.showroomVehicleCoords.y,currentConfig.dealershipConfig.showroomVehicleCoords.z, currentConfig.dealershipConfig.showroomVehicleCoords.w, false, true)
        spawnedVehicle = veh
        FreezeEntityPosition(veh, true)
        local rot = GetEntityRotation(veh)
        local minDim, maxDim = GetModelDimensions(hash)
        local modelSize = maxDim - minDim
        local fovval = modelSize.x * modelSize.y * modelSize.z
        fov = fovval + 20
        SetCamFov(cam, fov)
        if data.category == 'playerVehicles' and NyoModules.isModuleActive('nyo_bennys') and currentDealership.categories.playerVehicles.vehicles[data.vehicle].custom then
            TriggerEvent('nyo_modules:applyVehicleCustomization', nil, json.decode(currentDealership.categories.playerVehicles.vehicles[data.vehicle].custom), veh)
        end
        cb(true)
        while DoesEntityExist(veh) do
            rot = vec3(rot.x, rot.y, rot.z + 0.1)
            SetEntityRotation(veh, rot)
            Wait(10)
        end
    end)

    NyoModulesClient.registerNUICallback('startTestDrive', function(data,cb)
        SafeEvents.triggerServer('dealership-startTestDrive')
        DeleteEntity(spawnedVehicle)
        local hash = GetHashKey(currentVehicle)
        RequestModel(hash)
        while not HasModelLoaded(hash) do
            Wait(0)
        end
        local veh = CreateVehicle(hash,currentConfig.dealershipConfig.testDriveStartCoords.x,currentConfig.dealershipConfig.testDriveStartCoords.y,currentConfig.dealershipConfig.testDriveStartCoords.z, currentConfig.dealershipConfig.testDriveStartCoords.w, false, true)
        SetPedIntoVehicle(plyPed, veh, -1)
        -- NyoModulesClient.closeUI()
        SetNuiFocus(false, false)
        SetCamActive(cam, false)
        RenderScriptCams(false, true, 0, true, true)
        testDrive = true
        while testDrive do
            if IsControlJustPressed(0,38) then
                testDrive = false
            end
            Wait(10)
        end
        SetCamActive(cam, true)
        RenderScriptCams(true, true, 500, true, true)   
        DeleteEntity(veh)
        SetEntityCoords(PlayerPedId(), resetCoord)
        NyoModulesClient.sendNUIMessage('stopTestDrive', {})
        -- NyoModulesClient.openUI({dealershipData = currentDealership, config = currentConfig.dealershipConfig})
        SetNuiFocus(true, true)
        SafeEvents.triggerServer('dealership-stopTestDrive')
        local veh = CreateVehicle(hash,currentConfig.dealershipConfig.showroomVehicleCoords.x,currentConfig.dealershipConfig.showroomVehicleCoords.y,currentConfig.dealershipConfig.showroomVehicleCoords.z, currentConfig.dealershipConfig.showroomVehicleCoords.w, false, true)
        spawnedVehicle = veh
        FreezeEntityPosition(veh, true)
        local rot = GetEntityRotation(veh)
        local minDim, maxDim = GetModelDimensions(hash)
        local modelSize = maxDim - minDim
        local fovval = modelSize.x * modelSize.y * modelSize.z
        fov = fovval + 20
        SetCamFov(cam, fov)
        if data.category == 'playerVehicles' and NyoModules.isModuleActive('nyo_bennys') and currentDealership.categories.playerVehicles.vehicles[data.vehicle].custom then
            TriggerEvent('nyo_modules:applyVehicleCustomization', nil, json.decode(currentDealership.categories.playerVehicles.vehicles[data.vehicle].custom), veh)
        end
        while DoesEntityExist(veh) do
            rot = vec3(rot.x, rot.y, rot.z + 0.1)
            SetEntityRotation(veh, rot)
            Wait(10)
        end
    end)

    NyoModulesClient.registerNUICallback('buyVehicle', function(data,cb)
        SafeEvents.triggerServer('dealership-buyVehicle', currentDealershipIndex, data, currentConfig.paymentType)
    end)

    NyoModulesClient.registerNUICallback('sellVehicle', function(data,cb)
        local success = RPC.trigger('dealership-sellVehicle', data, currentConfig.dealershipConfig.playerVehicleSellTax)
        if success then
            currentDealership.categories.playerVehicles.vehicles[data.vehicle] = nil
            NyoModulesClient.sendNUIMessage('updateUI', {dealershipData = currentDealership, config = currentConfig.dealershipConfig})
        end
    end)

end)