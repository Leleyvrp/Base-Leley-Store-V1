NyoModules.registerNyoModule('nyo_tattooshop', function()

    local valor = 0
    local precoTotal = 0
    local noProvador = false
    local oldC = nil -- Old do barberShop
    local cor = 0
    local old_custom = {}
    local nCustom = {}
    local dataPartE = 1
    local dataPartD = 'p1'
    local configShop = {}
    local typeShop = nil

    local pos = nil
    local camPos = nil
    local camPos2 = nil
    local cam = -1
    local oldH = 0
    local oldRotation = 0

    local tattooReset = true
    local paymentType

    local function parse_part(key)
        if type(key) == "string" and string.sub(key,1,1) == "p" then
            return true,tonumber(string.sub(key,2))
        else
            return false,tonumber(key)
        end
    end

    local function SetCameraCoords(type, start)
        local ped = plyPed
        if start then                
            RenderScriptCams(false, false, 0, 1, 0)
            DestroyCam(cam, false)
        end
        
        if not DoesCamExist(cam) then
            cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
            SetCamActive(cam, true)
            RenderScriptCams(true, true, 500, true, true)   
            pos = GetEntityCoords(ped)
            camPos = GetOffsetFromEntityInWorldCoords(ped, 0.0, 2.0, 0.0)
            camPos2 = GetOffsetFromEntityInWorldCoords(ped, 0.0, 0.8, 0.0)       
        end

        if type == 'all' then                                        
            SetCamCoord(cam, camPos.x, camPos.y, camPos.z+0.75)
            PointCamAtCoord(cam, pos.x, pos.y, pos.z+0.15)
        elseif type == 'head' then 
            SetCamCoord(cam, camPos2.x, camPos2.y, camPos2.z+0.7)
            PointCamAtCoord(cam, pos.x, pos.y, pos.z+0.7)
        elseif type == 'torso' then 
            SetCamCoord(cam, camPos2.x, camPos2.y, camPos2.z+0.40)
            PointCamAtCoord(cam, pos.x, pos.y, pos.z+0.20)
        elseif type == 'shoes' then 
            SetCamCoord(cam, camPos2.x, camPos2.y, camPos2.z-0.30)
            PointCamAtCoord(cam, pos.x, pos.y, pos.z-0.30)
        elseif type == 'foot' then 
            SetCamCoord(cam, camPos2.x, camPos2.y, camPos2.z-0.70)
            PointCamAtCoord(cam, pos.x, pos.y, pos.z-0.70)
        end        
    end

    local function DeleteCam()
        SetCamActive(cam, false)
        RenderScriptCams(false, true, 0, true, true)
        cam = nil
    end

    local function setCustomization(custom)
        local ped = plyPed
        for k,v in pairs(custom) do
            if k ~= "model" and k ~= "modelhash" then
                local isprop, index = parse_part(k)
                if isprop then
                    if v[1] < 0 then
                        ClearPedProp(ped,index)
                    else
                        SetPedPropIndex(ped,index,v[1],v[2],v[3] or 2)
                    end
                else
                    SetPedComponentVariation(ped,index,v[1],v[2],v[3] or 2)
                end
            -- TriggerEvent("reloadtattos")
            end
        end
    end 

    local function getCustomization()
        ped = PlayerPedId()
        local custom = {}
        custom.modelhash = GetEntityModel(ped)
    
        for i = 0,20 do
            custom[i] = { GetPedDrawableVariation(ped,i),GetPedTextureVariation(ped,i),GetPedPaletteVariation(ped,i) }
        end
    
        for i = 0,10 do
            custom["p"..i] = { GetPedPropIndex(ped,i),math.max(GetPedPropTextureIndex(ped,i),0) }
        end
        return custom
    end

    local function setTattooRoupa()
        local modelHash = old_custom.modelhash
        local idleCopy = {}
        for l,w in pairs(configShop.roupaPelado[modelHash]) do
            idleCopy[l] = w
        end
    
        setCustomization(idleCopy)
    end

    local function atualizarTattooNUI()
        local ped = plyPed
        ClearPedDecorations(ped)
        for k,v in pairs(LocalPlayer.state.tattos) do       
            AddPedDecorationFromHashes(ped,GetHashKey(v[1]),GetHashKey(k))
        end

        NyoModulesClient.sendNUIMessage('updateTattooShopPrice', { value = precoTotal })
    end

    local function shopProvador() 
        ped = PlayerPedId()
        CreateThread(function()
            while inShop do
                DisableControlAction(1, 1, true)
                DisableControlAction(1, 2, true)
                DisableControlAction(1, 24, true)
                DisablePlayerFiring(ped, true)
                DisableControlAction(1, 142, true)
                DisableControlAction(1, 106, true)
                DisableControlAction(1, 37, true)
                Wait(4)
            end
        end)
    end


    SafeEvents.register('tattoshop:applyTattos', function(custom)
        LocalPlayer.state.tattos = custom
        local ped = PlayerPedId()
        ClearPedDecorations(ped)
        for k,v in pairs(LocalPlayer.state.tattos) do
            AddPedDecorationFromHashes(ped,GetHashKey(v[1]),GetHashKey(k))
        end
    end)

    if not LocalPlayer.state.tattos then
        RPC.triggerCallback('tattooshop-getTattoos', function(custom)
            if custom then 
                LocalPlayer.state.tattos = custom
                local ped = PlayerPedId()
                ClearPedDecorations(ped)
                for k,v in pairs(LocalPlayer.state.tattos) do
                    AddPedDecorationFromHashes(ped,GetHashKey(v[1]),GetHashKey(k))
                end
            end         
        end)
    end

    RegisterNetEvent("nyoModule:refreshTattoo", function()
        local ped = PlayerPedId()
        ClearPedDecorations(ped)
        for k,v in pairs(LocalPlayer.state.tattos) do
            AddPedDecorationFromHashes(ped,GetHashKey(v[1]),GetHashKey(k))
        end
    end)

    RegisterNetEvent("nyoModule:tattooUpdate", function(type)
        if LocalPlayer.state.tattos == nil then 
            if type then 
                RPC.triggerCallback('tattooshop-getTattoos', function(custom)
                    LocalPlayer.state.tattos = custom
                    local ped = PlayerPedId()
                    ClearPedDecorations(ped)
                    for k,v in pairs(LocalPlayer.state.tattos) do
                        AddPedDecorationFromHashes(ped,GetHashKey(v[1]),GetHashKey(k))
                    end
                end)
            else                 
                local ped = PlayerPedId()
                ClearPedDecorations(ped)
                for k,v in pairs(LocalPlayer.state.tattos) do
                    AddPedDecorationFromHashes(ped,GetHashKey(v[1]),GetHashKey(k))
                end
            end
        else 
            local ped = PlayerPedId()
            ClearPedDecorations(ped)
            for k,v in pairs(LocalPlayer.state.tattos) do
                AddPedDecorationFromHashes(ped,GetHashKey(v[1]),GetHashKey(k))
            end
        end
    end)

    NyoModulesClient.registerNUICallback('shopRotation', function(data,cb)
        local ped = plyPed
        local newH = data.rotation + 0.00
        SetEntityHeading(ped, newH)
        cb({})
    end)

    NyoModulesClient.registerNUICallback('shopCam', function(data,cb)
        SetCameraCoords(data.type, false)
    end)

    NyoModulesClient.registerNUICallback("changeTattooShopItem", function(data, cb)
        local pId = data.itemId + 1
        local pType = data.part
        local sexo = data.sexo

        local tattooData = configShop['parts'..sexo][pType]['tattoo'][pId]
        if LocalPlayer.state.tattos[tattooData['name']] ~= nil then 
            local newAtualTattoo = {}
            for k,v in pairs(LocalPlayer.state.tattos) do 
                if k ~= tattooData['name'] then 
                    newAtualTattoo[k] = v
                end
            end
            LocalPlayer.state.tattos = newAtualTattoo

                if LocalPlayer.state.oldTattos[tattooData['name']] == nil then 
                    precoTotal = precoTotal - tattooData['price']
                end
            atualizarTattooNUI()
        else 
            local newAtualTattoo = {}
            for k,v in pairs(LocalPlayer.state.tattos) do 
                if k ~= tattooData['name'] then 
                    newAtualTattoo[k] = v
                end
            end
            newAtualTattoo[tattooData['name']] = {tattooData['part']}
            LocalPlayer.state.tattos = newAtualTattoo
            if LocalPlayer.state.oldTattos[tattooData['name']] == nil then 
                precoTotal = precoTotal + tattooData['price']
            end
            atualizarTattooNUI()
        end  
    end)

    NyoModulesClient.registerNUICallback("limpaTattoo", function(data, cb)
        LocalPlayer.state.tattos = {}
        precoTotal = 0
        atualizarTattooNUI()
    end)

    NyoModulesClient.registerInterface(1)

    -- tipo, typeOpen, config, x, y, z, h

    local function openUI(v,k)
        tattooReset = true
        local ped = plyPed
        local config = NyoModulesConfigs[v.config]

        if config.hidePlayers then
            NyoModulesClient.enableHidingPlayers()
        end

        NyoModulesClient.disableMarkerType(1)

        local cds = k and v.coord or plyCoords
        --ultLoja = k
        valor = 0
        precoTotal = 0
        noProvador = true
        configShop = config.shopConfig
        dataPartE = 'head'
        old_custom = getCustomization()
        paymentType = config.paymentType
        setTattooRoupa()
        
        shopProvador() 
        cor = 0
        
        TaskGoToCoordAnyMeans(ped, cds, 1.0, 0, 0, 786603, 0xbf800000)
        CreateThread(function()
            while noProvador do 
                Wait(4)
                if #(GetEntityCoords(ped) - cds).xy < 0.5 then 
                    oldH = v.heading
                    if k then
                        SetEntityHeading(ped, v.heading)     
                    end                  
                    ClearPedTasks(ped)
                    oldRotation = 0
                    noProvador = false
                    SetNuiFocus(true, true)
                    local pedModel = GetEntityModel(ped)
                    local sexo = ''
                    local prefix = ''
                    if pedModel == GetHashKey("mp_m_freemode_01") then
                        sexo = 'Male'
                        prefix = 'M'                
                    elseif pedModel == GetHashKey("mp_f_freemode_01") then 
                        sexo = 'Female'
                        prefix = 'F'
                    end
                    categoryE = 'head'
                    LocalPlayer.state.oldTattos = LocalPlayer.state.tattos
                    NyoModulesClient.openUI({config = config.shopConfig, oldpart = LocalPlayer.state.tattos, sexo = sexo, prefix = prefix, categoryE = categoryE})
                    SetCameraCoords('all', true)
                    FreezeEntityPosition(ped, true)
                    SetEntityInvincible(ped, false) --MQCU 
                    IsEntityStatic(ped)
                end
            end
        end)  
    end

    NyoModulesClient.registerKeyPress(openUI)
    NyoModules.registerCommand(openUI)

    NyoModulesClient.registerNUICallback('close', function(data,cb)
        NyoModulesClient.enableMarkerType(1)
        if tattooReset then 
            LocalPlayer.state.tattos = LocalPlayer.state.oldTattos
            local ped = plyPed
            ClearPedDecorations(ped)
            for k,v in pairs(LocalPlayer.state.tattos) do
                AddPedDecorationFromHashes(ped,GetHashKey(v[1]),GetHashKey(k))
            end
        end
        LocalPlayer.state.oldTattos = {}
        setCustomization(old_custom)
        NyoModulesClient.disableHidingPlayers()
        SetNuiFocus(false, false)
        DeleteCam()
        FreezeEntityPosition(plyPed, false)
    end)

    NyoModulesClient.registerNUICallback('payment', function(data,cb)
        local success = RPC.trigger('tattooshop-tryPayment', precoTotal, paymentType or 1, LocalPlayer.state.tattos)
        tattooReset = not success
        NyoModulesClient.closeUI()
    end)

    -- RegisterCommand("testeTattoo", function(source, args)
    --     local ped = PlayerPedId()
    --     local cfg = NyoModulesConfigs['configTattooShopAll']['shopConfig']['partsM']       
    --     for k,v in pairs(tattooData) do 
    --         if k == 'partsM' then 
    --             for k2,v2 in pairs(v) do 
    --                 for k3, v3 in pairs(v2) do 


    --                     for k4,v4 in pairs(cfg) do 
    --                         for k5,v5 in pairs(v4.tattoo) do 
    --                             if GetHashKey(v2.name) == v3.name and GetHashKey(v2.part) == v3.part then 

    --                             else 
    --                                 print(v3.part,v3.name)
    --                             end
    --                         end
    --                         Wait(1)
    --                      end
    --                      Wait(1)
                        
                        
    --                 end
    --                 Wait(1)
    --             end
    --             Wait(1)
    --         end
    --     end
    -- end)

end)