NyoModules.registerNyoModule('nyo_barbershop', function()

    local barberData = {
        parts = {
            ["Defeitos"] = 0,
            ["Barba"] = 1,
            ["Sobrancelhas"] = 2,
            ["Envelhecimento"] = 3,
            ["Maquiagem"] = 4,
            ["Blush"] = 5,
            ["Rugas"] = 6,
            ["Batom"] = 8,
            ["Sardas"] = 9,
            ["Cabelo no Peito"] = 10,
            ["Manchas no Corpo"] = 11,
            ["Cabelo"] = 12,
            ["Cor Sec. do Cabelo"] = 13
        },

        character = {

        },

        oldCharacter = {
            ["0"] = 0,
            ["1"] = 0,
            ["2"] = 0,
            ["3"] = 0,
            ["4"] = 0,
            ["5"] = 0,
            ["6"] = 0,
            ["8"] = 0,
            ["9"] = 0,                
            ["10"] = 0,
            ["12"] = 0,
            ["13"] = 0,                
        },

        carroCompras = {
            ["0"] = false,
            ["1"] = false,
            ["2"] = false,
            ["3"] = false,
            ["4"] = false,
            ["5"] = false,
            ["6"] = false,
            ["8"] = false,
            ["9"] = false,              
            ["10"] = false,
            ["12"] = false,
            ["13"] = false,              
        }
    }

    local cfg = {}

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
    local precoTotal, oldC, configShop, barberReset

    local function updateCarroCompras(type)
        valor = 0
        if type == 'skinShop' then 
            for k, v in pairs(shopConfig.carroCompras) do
                if shopConfig.carroCompras[k] == true then
                    local somaValor = configShop[k]['price']
                    valor = valor + somaValor
                end
            end
        elseif type == 'barberShop' then 
            for k, v in pairs(barberData.carroCompras) do
                if barberData.carroCompras[k] == true then
                    local somaValor = configShop[tonumber(k)]['price']
                    valor = valor + somaValor
                end
            end
        end
        
        precoTotal = valor
        return valor
    end

    local function setPedCustom()
        local ped = PlayerPedId()
        local data = LocalPlayer.state.pedCustom

        -- Aspectos visuais
        SetPedHeadBlendData(ped,data.fathersID,data.mothersID,0,data.skinColor,0,0,data.shapeMix and data.shapeMix + 0.0 or 0.99,0,0,false)

        -- Olhos
        SetPedEyeColor(ped,data.eyesColor)

        -- Sobrancelha
        SetPedFaceFeature(ped,6,data.eyebrowsHeight)
        SetPedFaceFeature(ped,7,data.eyebrowsWidth)

        -- Nariz
        SetPedFaceFeature(ped,0,data.noseWidth)
        SetPedFaceFeature(ped,1,data.noseHeight)
        SetPedFaceFeature(ped,2,data.noseLength)
        SetPedFaceFeature(ped,3,data.noseBridge)
        SetPedFaceFeature(ped,4,data.noseTip)
        SetPedFaceFeature(ped,5,data.noseShift)

        -- Bochechas
        SetPedFaceFeature(ped,8,data.cheekboneHeight)
        SetPedFaceFeature(ped,9,data.cheekboneWidth)
        SetPedFaceFeature(ped,10,data.cheeksWidth)

        -- Boca/Mandibula
        SetPedFaceFeature(ped,12,data.lips)
        SetPedFaceFeature(ped,13,data.jawWidth)
        SetPedFaceFeature(ped,14,data.jawHeight)

        -- Queixo
        SetPedFaceFeature(ped,15,data.chinLength)
        SetPedFaceFeature(ped,16,data.chinPosition)
        SetPedFaceFeature(ped,17,data.chinWidth)
        SetPedFaceFeature(ped,18,data.chinShape)

        -- Pescoço
        SetPedFaceFeature(ped,19,data.neckWidth)

        -- Cabelo
        SetPedComponentVariation(ped,2,data.hairModel,0,0)
        SetPedHairColor(ped,data.firstHairColor,data.secondHairColor)
    
        -- Sobrancelha 
        SetPedHeadOverlay(ped,2,data.eyebrowsModel,data.eyebrowsOpacity or 0.99)
        SetPedHeadOverlayColor(ped,2,1,data.eyebrowsColor,data.eyebrowsColor)
    
        -- Barba
        SetPedHeadOverlay(ped,1,data.beardModel, data.bardOpacity or 0.99)
        SetPedHeadOverlayColor(ped,1,1,data.beardColor,data.beardColor)
    
        -- Pelo Corporal
        SetPedHeadOverlay(ped,10,data.chestModel, data.chestOpacity or 0.99)
        SetPedHeadOverlayColor(ped,10,1,data.chestColor,data.chestColor)
    
        -- Blush
        SetPedHeadOverlay(ped,5,data.blushModel,data.blushOpacity or 0.99)
        SetPedHeadOverlayColor(ped,5,1,data.blushColor,data.blushColor)
    
        -- Battom
        SetPedHeadOverlay(ped,8,data.lipstickModel, data.lipstickOpacity or 0.99)
        SetPedHeadOverlayColor(ped,8,1,data.lipstickColor,data.lipstickColor)
    
        -- Manchas
        SetPedHeadOverlay(ped,0,data.blemishesModel, data.blemishesOpacity or 0.99)
        SetPedHeadOverlayColor(ped,0,0,0,0)
    
        -- Envelhecimento
        SetPedHeadOverlay(ped,3,data.ageingModel, data.ageingOpacity or 0.99)
        SetPedHeadOverlayColor(ped,3,0,0,0)
    
        -- Aspecto
        SetPedHeadOverlay(ped,6,data.complexionModel, data.complexionopacity or 0.99)
        SetPedHeadOverlayColor(ped,6,0,0,0)
    
        -- Pele
        SetPedHeadOverlay(ped,7,data.sundamageModel, data.sundamageOpacity or 0.99)
        SetPedHeadOverlayColor(ped,7,0,0,0)
    
        -- Sardas
        SetPedHeadOverlay(ped,9,data.frecklesModel, data.frecklesOpacity or 0.99)
        SetPedHeadOverlayColor(ped,9,0,0,0)
    
        -- Maquiagem
        SetPedHeadOverlay(ped,4,data.makeupModel,data.makeUpOpacity or 0.99)
        SetPedHeadOverlayColor(ped,4,0,10,15)
    end


    -- Funções Gerais 
    local function getBarberShopDrawables(part)
        ped = PlayerPedId()
        if part == 12 then
            return tonumber(GetNumberOfPedDrawableVariations(ped,2))
        elseif part == -1 then
            return tonumber(GetNumberOfPedDrawableVariations(ped,0))
        elseif part == -2 then
            return 64
        else
            return tonumber(GetNumHeadOverlayValues(part))
        end
    end
    
    local function getBarberShopTextures(part)
        if part == -1 then
            return tonumber(GetNumHairColors())
        else
            return 64
        end
    end

    local function getBarberOverlay()
        local bConfig = LocalPlayer.state.pedCustom
        local overlay = {
            ["0"] = { bConfig.blemishesModel,0 },
            ["1"] = { bConfig.beardModel,bConfig.beardColor },            
            ["2"] = { bConfig.eyebrowsModel,bConfig.eyebrowsColor },            
            ["3"] = { bConfig.ageingModel,0 },            
            ["4"] = { bConfig.makeupModel,0 },            
            ["5"] = { bConfig.blushModel,bConfig.blushColor },
            ["6"] = { bConfig.complexionModel,0 },
            ["8"] = { bConfig.lipstickModel,bConfig.lipstickColor },
            ["9"] = { bConfig.frecklesModel,0 },            
            ["10"] = { bConfig.chestModel,bConfig.chestColor },
            ["12"] = { bConfig.hairModel,bConfig.firstHairColor },
            ["13"] = { bConfig.hairModel,bConfig.secondHairColor },
        }
        return overlay
    end
    
    NyoModulesClient.registerInterface(1)

    local function openUI(v,k)
        console.debug('^3[ BARBERSHOP ] ^7Open barbershop UI')
        NyoModulesClient.disableMarkerType(1)
        exports.smartphone:closeSmartphone()
        local ped = plyPed
        local model = GetEntityModel(ped)

        SetNuiFocus(true, true)
        barberReset = true

        if k then
            SetEntityCoords(ped, v.coord)
            SetEntityHeading(ped, v.heading)
        end

        local drawa = getBarberShopDrawables(12)
        local texture = getBarberShopTextures(12)

        LocalPlayer.state.oldPedCustom = LocalPlayer.state.pedCustom
        cfg = NyoModulesConfigs[v.config]

        if cfg.hidePlayers then
            NyoModulesClient.enableHidingPlayers()
        end

        oldC = getBarberOverlay()
        barberData.oldCharacter = LocalPlayer.state.oldPedCustom
        configShop = cfg.shopConfig

        NyoModulesClient.openUI({
            type = cfg.shopType,
            config = cfg,
            oldpart = oldC,
            sexo = model == `mp_m_freemode_01` and 'Male' or 'Female',
            prefix = model == `mp_m_freemode_01` and 'M' or 'F',
            category = 12,
            drawa = drawa,
            texture = texture
        })

        SetCameraCoords('all', true)
    end
    
    NyoModulesClient.registerKeyPress(openUI)
    NyoModules.registerCommand(openUI)

    NyoModulesClient.registerNUICallback('closeBarber', function(data,cb)
        console.debug('^3[ BARBERSHOP ] ^7Close barbershop UI')
        NyoModulesClient.enableMarkerType(1)
        if barberReset then
            LocalPlayer.state.pedCustom = LocalPlayer.state.oldPedCustom
            setPedCustom()
        end
        NyoModulesClient.disableHidingPlayers()
        SetNuiFocus(false, false)
        DeleteCam()
        cb({})
    end)

    NyoModulesClient.registerNUICallback('shopCam', function(data,cb)
        console.debug('^3[ BARBERSHOP ] ^7Change camera position')
        SetCameraCoords(data.type, false)
    end)

    NyoModulesClient.registerNUICallback('changeBarberShopPart', function(data,cb)
        console.debug('^3[ BARBERSHOP ] ^7Change barbershop part')
        local newPart = ''
        local menu = data.menu

        if menu == 'D' then
            dataPartD = data.part
            newPart = dataPartD
        elseif menu == 'E' then 
            dataPartE = data.part
            newPart = dataPartE
        end

        local opacity = 0.99

        local bConfig = LocalPlayer.state.pedCustom

        if tonumber(newPart) == 0 then 
        opacity = bConfig.blemishesOpacity or 0.99
        elseif tonumber(newPart) == 1 then 
        opacity = bConfig.bardOpacity or 0.99
        elseif tonumber(newPart) == 2 then 
            opacity = bConfig.eyebrowsOpacity or 0.99
        elseif tonumber(newPart) == 3 then 
            opacity = bConfig.ageingOpacity or 0.99
        elseif tonumber(newPart) == 4 then 
            opacity = bConfig.makeUpOpacity or 0.99        
        elseif tonumber(newPart) == 5 then 
            opacity = bConfig.blushOpacity or 0.99
        elseif tonumber(newPart) == 6 then 
            opacity = bConfig.complexionopacity or 0.99
        elseif tonumber(newPart) == 7 then 
            opacity = bConfig.sundamageOpacity or 0.99
        elseif tonumber(newPart) == 8 then 
            opacity = bConfig.lipstickOpacity or 0.99
        elseif tonumber(newPart) == 9 then 
            opacity = bConfig.frecklesOpacity or 0.99
        elseif tonumber(newPart) == 10 then 
            opacity = bConfig.chestOpacity or 0.99
        end
        
        NyoModulesClient.sendNUIMessage('updateBarberShop', {
            newPart = newPart,
            drawa = getBarberShopDrawables(tonumber(newPart)),
            texture = getBarberShopTextures(tonumber(newPart)),
            opacity = tonumber(opacity),
            menu = menu
        })

        cb({})
    end)

    NyoModulesClient.registerNUICallback("changeBarberShopItem", function(data, cb)
        console.debug('^3[ BARBERSHOP ] ^7Change barbershop item')
        local type = tonumber(data.part)
    
        if tonumber(data.itemId) ~= oldC[tostring(type)][1] and barberData.oldCharacter[tostring(type)] ~= "custom" then 
            barberData.carroCompras[tostring(type)] = true
            barberData.oldCharacter[tostring(type)] = "custom"
        end

        if tonumber(data.itemId) == oldC[tostring(type)][1] and barberData.oldCharacter[tostring(type)] == "custom" then 
            barberData.carroCompras[tostring(type)] = false                
            barberData.oldCharacter[tostring(type)] = "0"
        end

        local price = updateCarroCompras('barberShop')

        local bConfig = LocalPlayer.state.pedCustom
        if type == 1 then -- Barba
            bConfig.beardModel = tonumber(data.itemId)
        elseif type == 2 then --Sobrancelhas
            bConfig.eyebrowsModel = tonumber(data.itemId)
        elseif type == 3 then -- Envelhecimento
            bConfig.ageingModel = tonumber(data.itemId)
        elseif type == 4 then --Maquiagem
            bConfig.makeupModel = tonumber(data.itemId)	
        elseif type == 5 then -- Blush 
            bConfig.blushModel = tonumber(data.itemId)
        elseif type == 6 then -- Rugas 
            bConfig.complexionModel = tonumber(data.itemId)
        elseif(type == 8) then --Batom
            bConfig.lipstickModel = tonumber(data.itemId)
        elseif(type == 9) then -- Sardas 
            bConfig.frecklesModel = tonumber(data.itemId)
        elseif(type == 10) then -- Cabelo do Peito 
            bConfig.chestModel = tonumber(data.itemId)
        elseif type == 12 then -- Cabelo
            bConfig.hairModel = tonumber(data.itemId)
        end
        LocalPlayer.state.pedCustom = bConfig
        setPedCustom()

        NyoModulesClient.sendNUIMessage('updateBarberShopPrice', { value = price })
        cb({})
    end)

    NyoModulesClient.registerNUICallback('changeBarberShopColor', function(data,cb)
        console.debug('^3[ BARBERSHOP ] ^7Change barbershop color')
        local dataType = tonumber(data.part);
        local dColor = tonumber(data.color);
        local type = tonumber(data.type);
        local bConfig = LocalPlayer.state.pedCustom

        if dataType == 1 or dataType == 2 or dataType == 5 or dataType == 8 or dataType == 10 then 
            if type == 1 then 
                if dataType == 1 then 				
                    bConfig.beardColor = dColor
                elseif dataType == 2 then 
                    bConfig.eyebrowsColor = dColor
                elseif dataType == 5 then 
                    bConfig.blushColor = dColor
                elseif dataType == 8 then 
                    bConfig.lipstickColor = dColor
                elseif dataType == 10 then 
                    bConfig.chestColor = dColor
                end
            end
        elseif dataType == 12 then 
            if type == 1 then 			
                bConfig.firstHairColor = dColor
            else			
                bConfig.secondHairColor = dColor
            end
        end
        LocalPlayer.state.pedCustom = bConfig
        setPedCustom()
    end)

    NyoModulesClient.registerNUICallback('changeBarberShopbarberOpacity', function(data,cb)
        console.debug('^3[ BARBERSHOP ] ^7Change barbershop opacity')
        local type = tonumber(data.part)
        local bConfig = LocalPlayer.state.pedCustom

        if type == 0 then 
            bConfig.blemishesOpacity = tonumber(data.opacity)
        elseif type == 1 then 
            bConfig.bardOpacity = tonumber(data.opacity)
        elseif type == 2 then 
            bConfig.eyebrowsOpacity = tonumber(data.opacity)
        elseif type == 3 then 
            bConfig.ageingOpacity = tonumber(data.opacity)
        elseif type == 4 then 
            bConfig.makeUpOpacity = tonumber(data.opacity)            
        elseif type == 5 then 
            bConfig.blushOpacity = tonumber(data.opacity)
        elseif type == 6 then 
            bConfig.complexionopacity = tonumber(data.opacity)
        elseif type == 7 then 
            bConfig.sundamageOpacity = tonumber(data.opacity)
        elseif type == 8 then 
            bConfig.lipstickOpacity = tonumber(data.opacity)
        elseif type == 9 then 
            bConfig.frecklesOpacity = tonumber(data.opacity)
        elseif type == 10 then 
            bConfig.chestOpacity = tonumber(data.opacity)
        end
        LocalPlayer.state.pedCustom = bConfig
        setPedCustom()
    end)

    NyoModulesClient.registerNUICallback('changeRotation', function(data,cb)
        console.debug('^3[ BARBERSHOP ] ^7Change rotation')
        local ped = plyPed
        local newH = data.value + 0.00
        SetEntityHeading(ped, newH)
        cb({})
    end)

    NyoModulesClient.registerNUICallback('payment', function(data,cb)
        console.debug('^3[ BARBERSHOP ] ^7Try payment')
        local success = RPC.trigger('barbershop-tryPayment', precoTotal, cfg.paymentType or 1, LocalPlayer.state.pedCustom)
        barberReset  = not success
        NyoModulesClient.closeUI()
    end)

    RPC.triggerCallback('barberShop-getCharacter', function(custom, start)
        if custom and start then             
            LocalPlayer.state.barberStart = start
            LocalPlayer.state.pedCustom = custom
            setPedCustom()   
        end 
    end)

    RegisterNetEvent("nyoModule:barberUpdate")
    AddEventHandler("nyoModule:barberUpdate", function(type)
        if LocalPlayer.state.pedCustom == nil then 
            if type then 
                RPC.triggerCallback('barberShop-getCharacter', function(custom, start)
                    LocalPlayer.state.barberStart = start
                    LocalPlayer.state.pedCustom = custom
                    setPedCustom()    
                end)
            else                 
                setPedCustom()
            end
        else 
            setPedCustom()
        end

    end)

    RegisterNetEvent("nyoModule:refreshBarber")
    AddEventHandler("nyoModule:refreshBarber",function()
        setPedCustom()
    end)

    SafeEvents.register('barbershop:init', function(custom)
        LocalPlayer.state.barberStart = true
        LocalPlayer.state.pedCustom = custom
        setPedCustom()    
    end)
    

end)