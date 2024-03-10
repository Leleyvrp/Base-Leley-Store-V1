NyoModules.registerNyoModule('nyo_guardaroupa', function()

    NyoModulesClient.registerInterface(1)

    local wardrobeData
    local shopConfig = {
        parts = {
            mascara = 1,
            mao = 3,
            calca = 4,
            mochila = 5,
            sapato = 6,
            gravata = 7,
            camisa = 8,
            colete = 9,
            decals = 10,
            jaqueta = 11,
            bone = "p0",
            oculos = "p1",
            brinco = "p2",
            relogio = "p6",
            bracelete = "p7",
            outfit = 'outfit'
        },
    }

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

    local function shopProvador() 
        local ped = plyPed
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

    local function parse_part(key)
        if type(key) == "string" and string.sub(key,1,1) == "p" then
            return true,tonumber(string.sub(key,2))
        else
            return false,tonumber(key)
        end
    end

    local function getSkinShopDrawables(part)
        ped = PlayerPedId()
        local isprop, index = parse_part(part)
        if isprop then
            return GetNumberOfPedPropDrawableVariations(ped,index)
        else
            return GetNumberOfPedDrawableVariations(ped,index)
        end
    end
    
    local function setCustomization(custom)
        ped = PlayerPedId()
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
                    if index ~= 2 then                        
                        SetPedComponentVariation(ped,index,v[1],v[2],v[3] or 2)
                    end
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

    -- RegisterCommand("tguarda", function(source, args)
    --     TriggerEvent("nyoModule:GuardaRoupa:abrir", 1,1,1,1,1,1)
    -- end)

    RegisterNetEvent('nyoModule:GuardaRoupa:abrir', function(x, y, z, x2, y2, z2)
        local ped = plyPed
        local distance = #(vector3(x,y,z) - vector3(x2,y2,z2))
        if distance <= 1 then 
            local coordG = plyCoords
            local h = GetEntityHeading(ped)
            wardrobeData = RPC.trigger("wardrobe-getData")

            valor = 0
            precoTotal = 0
            noProvador = true
            configShop = wardrobeData
            dataPart = 1
            old_custom = getCustomization()
            nCustom = old_custom
            shopProvador()
            cor = 0
            TaskGoToCoordAnyMeans(ped, coordG, 1.0, 0, 0, 786603, 0xbf800000)
            while noProvador do 
                Wait(4)
                if #(GetEntityCoords(ped) - coordG).xy < 0.5 then 
                    oldH = h
                    SetEntityHeading(ped, h)                       
                    ClearPedTasks(ped)
                    oldRotation = 0
                    noProvador = false
                    -- openGuiShop(tipo, typeOpen, config, old_custom)                              
                    FreezeEntityPosition(ped, true)
                    SetEntityInvincible(ped, false) --MQCU 
                    IsEntityStatic(ped)
                    SetNuiFocus(true, true)
                    typeShop = tipo
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
                    drawa = getSkinShopDrawables(dataPart)
                    category = dataPart
                    NyoModulesClient.openUI({type = typeOpen, config = configShop, oldpart = old_custom, sexo = sexo, prefix = prefix, drawa = drawa, category = category})
                    SetCameraCoords('all', true)
                end
            end
        end    
    end) 

    NyoModulesClient.registerNUICallback("changeGuardaRoupaPart", function(data, cb)
        local newPart = ''
            dataPart = shopConfig.parts[data.part]
            newPart = dataPart
        
        NyoModulesClient.sendNUIMessage('updateGuardaRoupa', {
            newPart = newPart,
            drawa = getSkinShopDrawables(newPart)
        })
    end)

    NyoModulesClient.registerNUICallback("salvarOutfit", function(data, cb)
        local roupa = getCustomization()
        local name = data.name
        wardrobeData = RPC.trigger('wardrobe-saveOutfit', name, roupa)
        NyoModulesClient.sendNUIMessage('updateGuardaRoupaOutFit', {
            newPart = dataPart,
            drawa = getSkinShopDrawables(dataPart),
            config = wardrobeData
        })
    end)

    NyoModulesClient.registerNUICallback("guardaRoupaUsarOutfit", function(data, cb)
        local name = data.name
        local outfit = wardrobeData['outfit'][name]
        if outfit then 
            setCustomization(outfit)
        end
    end)

    NyoModulesClient.registerNUICallback("guardaRoupaExcluirOutfit", function(data, cb)
        local name = data.name
        wardrobeData = RPC.trigger('wardrobe-deleteOutfit', name)
        NyoModulesClient.sendNUIMessage('updateGuardaRoupaOutFit', {
            newPart = dataPart,
            drawa = getSkinShopDrawables(dataPart),
            config = wardrobeData,
        })
    end)
    

    NyoModulesClient.registerNUICallback("changeGuardaRoupaMenuColor", function(data, cb)
        local ped = plyPed
        local dPart = data.part;
        local dId = data.itemId;
        local menu = data.menu;
        local menuChange = data.menuChange;
        local change = data.change;
        local color = data.color;
        local isprop, index = parse_part(dPart)
        if isprop then 
            max = GetNumberOfPedPropTextureVariations(ped, index, dId)
        else 
            max = GetNumberOfPedTextureVariations(ped, index, dId)
        end

        if menuChange then 
            NyoModulesClient.sendNUIMessage('updateGuardaRoupaColor', {
                drawa = max,
                roupaId = dId
            })
        end 

        if change and change ~= 0 then 
            changeGuardaRoupaClouth(dPart,dId,color)
        end
    
    end)

    function changeGuardaRoupaClouth(dados, tipo, cor)
        local ped = plyPed
        local isprop, index = parse_part(dados)

        if isprop then 
            if(tipo == -1) then 
                ClearPedProp(ped, index)
            else      
                SetPedPropIndex(ped, index, tipo, cor, 1)
            end  
        else 
            SetPedComponentVariation(ped, index, tipo, cor, 1)
        end
    end

    NyoModulesClient.registerNUICallback('close', function(data,cb)
        SetNuiFocus(false, false)
        DeleteCam()
        FreezeEntityPosition(plyPed, false)
        cb({})
    end)

    NyoModulesClient.registerNUICallback('payment', function(data,cb)
        _closed = true
        NyoModulesClient.closeUI()
        cb({})
    end)

    NyoModulesClient.registerNUICallback('guardaRotation', function(data,cb)
        local ped = plyPed
        local newH = data.rotation + 0.00
        SetEntityHeading(ped, newH)
        cb({})
    end)

    NyoModulesClient.registerNUICallback('guardaCam', function(data,cb)
        SetCameraCoords(data.type, false)
    end)
end)