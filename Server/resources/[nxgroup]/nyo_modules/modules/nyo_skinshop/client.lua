NyoModules.registerNyoModule('nyo_skinshop', function()

    NyoModulesClient.registerInterface(1)

    local inShop = false
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
    local paymentType = 1
    local typeShop = nil
    local pos = nil
    local camPos = nil
    local camPos2 = nil
    local cam = -1
    local oldH = 0
    local oldRotation = 0
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
        
        carroCompras = {
            mascara = false,
            mao = false,
            calca = false,
            mochila = false,
            sapato = false,
            gravata = false,
            camisa = false,
            colete = false,
            decals = false,
            jaqueta = false,
            bone = false,
            oculos = false,
            brinco = false,
            relogio = false,
            bracelete = false
        },

        old = {

        }
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
            PointCamAtCoord(cam, pos.x-0.50, pos.y-0.40, pos.z+0.15)
        elseif type == 'head' then 
            SetCamCoord(cam, camPos2.x, camPos2.y, camPos2.z+0.7)
            PointCamAtCoord(cam, pos.x-0.50, pos.y, pos.z+0.7)
        elseif type == 'torso' then 
            SetCamCoord(cam, camPos2.x, camPos2.y, camPos2.z+0.40)
            PointCamAtCoord(cam, pos.x-0.50, pos.y, pos.z+0.20)
        elseif type == 'shoes' then 
            SetCamCoord(cam, camPos2.x, camPos2.y, camPos2.z-0.30)
            PointCamAtCoord(cam, pos.x-0.50 ,pos.y, pos.z-0.30)
        elseif type == 'foot' then 
            SetCamCoord(cam, camPos2.x, camPos2.y, camPos2.z-0.70)
            PointCamAtCoord(cam, pos.x-0.50, pos.y, pos.z-0.70)
        end      
    end

    local function DeleteCam()
        SetCamActive(cam, false)
        RenderScriptCams(false, true, 0, true, true)
        cam = nil
    end

    local function parse_part(key)
        if type(key) == "string" and string.sub(key,1,1) == "p" then
            return true,tonumber(string.sub(key,2))
        else
            return false,tonumber(key)
        end
    end

    local function getSkinShopDrawables(part)
        local ped = plyPed
        local isprop, index = parse_part(part)
        if isprop then
            return GetNumberOfPedPropDrawableVariations(ped,index)
        else
            return GetNumberOfPedDrawableVariations(ped,index)
        end
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
                        SetPedPropIndex(ped,index,v[1],v[2],v[3] or 1)
                    end
                else
                    --print(index, v[1], v[2], v[3])
                    SetPedComponentVariation(ped,index,v[1],v[2],v[3] or 1)
                end
            -- TriggerEvent("reloadtattos")
            end
        end
    end 

    local function getCustomization()
        local ped = plyPed
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

    local function updateCarroCompras()
        valor = 0 
        for k, v in pairs(shopConfig.carroCompras) do
            if shopConfig.carroCompras[k] == true then
                local somaValor = configShop[k]['price']
                valor = valor + somaValor
            end
        end
        precoTotal = valor
        return valor
    end

    local function changeSkinShopClouth(dados, tipo, cor)
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
        
        custom = getCustomization()
        custom.modelhash = nil
    
        aux = old_custom[dados]
        v = custom[dados]
    
        if v[1] ~= aux[1] and shopConfig.old[dados] ~= "custom" then
            shopConfig.carroCompras[dados] = true
            shopConfig.old[dados] = "custom"
        end
        if v[1] == aux[1] and shopConfig.old[dados] == "custom" then
            shopConfig.carroCompras[dados] = false                
            shopConfig.old[dados] = "0"
        end
        price = updateCarroCompras('skinShop')

        
        NyoModulesClient.sendNUIMessage('updateSkinShopPrice', { value = price })
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

    local function closeGuiShop(reset)
        local ped = plyPed
        ClearPedTasks(ped)
        SetNuiFocus(false, false)
        FreezeEntityPosition(ped, false)
        SetEntityInvincible(ped, false)
    
        if DoesCamExist(cam) then
            RenderScriptCams(false, false, 0, 1, 0)
            DestroyCam(cam, false)     
        end

        shopConfig.carroCompras = {
            mascara = false,
            mao = false,
            calca = false,
            mochila = false,
            sapato = false,
            gravata = false,
            camisa = false,
            colete = false,
            decals = false,
            jaqueta = false,
            bone = false,
            oculos = false,
            brinco = false,
            relogio = false,
            bracelete = false
        }

        shopConfig.old = {}

        if reset then              
            setCustomization(old_custom)
        end

        inShop = false

        old_custom = {}
        nCustom = {}
        configShop = {}
        valor = 0
        precoTotal = 0
    end

    local function openGuiShop(config, old_custom, shopType)
        ped = PlayerPedId()
        local exp = exports["hud"]:showHud(false)
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
        drawaE = getSkinShopDrawables(dataPartE)
        categoryE = dataPartE
        drawaD = getSkinShopDrawables(dataPartD)
        categoryD = dataPartD
        NyoModulesClient.openUI({type = shopType, config = config, oldpart = old_custom, sexo = sexo, prefix = prefix, drawaE = drawaE, categoryE = categoryE, drawaD = drawaD, categoryD = categoryD})
        SetCameraCoords('all', true)
    end

    local function openShop(config, cds, h, shopType)
        local ped = plyPed
        inShop = true
        --ultLoja = k
        valor = 0
        precoTotal = 0
        noProvador = true
        configShop = config
        Wait(40)
        dataPartE = 1
        dataPartD = 'p1'
        old_custom = getCustomization()
        nCustom = old_custom
        
        shopProvador() 
        cor = 0
        
        TaskGoToCoordAnyMeans(ped, cds, 1.0, 0, 0, 786603, 0xbf800000)
        CreateThread(function()
            while noProvador do 
                Wait(4)
                if #(GetEntityCoords(ped) - cds).xy < 0.5 then 
                    oldH = h
                    SetEntityHeading(ped, h)                       
                    ClearPedTasks(ped)
                    oldRotation = 0
                    noProvador = false
                    openGuiShop( config, old_custom, shopType)                              
                    FreezeEntityPosition(ped, true)
                    SetEntityInvincible(ped, false) --MQCU 
                    IsEntityStatic(ped)
                end
            end
        end)            
    end 
    
    local _closed = false

    NyoModulesClient.registerKeyPress(function(v,k)
        _closed = false
        exports.smartphone:closeSmartphone()
        local config = NyoModulesConfigs[v.config]
        paymentType = config.paymentType or 1
        if config.hidePlayers then
            NyoModulesClient.enableHidingPlayers()
        end
        NyoModulesClient.disableMarkerType(1)
        openShop(config.shopConfig, v.coord, v.heading, config.shopType)
    end)

    NyoModules.registerCommand(function(v)
        _closed = false
        local config = NyoModulesConfigs[v.config]
        paymentType = config.paymentType or 1
        if config.hidePlayers then
            NyoModulesClient.enableHidingPlayers()
        end
        NyoModulesClient.disableMarkerType(1)
        openShop(config.shopConfig, plyCoords, GetEntityHeading(plyPed), config.shopType)
    end)
    
    NyoModulesClient.registerNUICallback('changeSkinShopMenuColor',function(data,cb)
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
            NyoModulesClient.sendNUIMessage('updateSkinShopColor', {
                menu = menu,
                drawa = max,
                roupaId = dId
            })
        end 

        if change and change ~= 0 then 
            changeSkinShopClouth(dPart,dId,color)
        end
        cb({})
    end)

    NyoModulesClient.registerNUICallback('changeSkinShopPart', function(data,cb)
        local newPart = ''
        local menu = data.menu
        if menu == 'D' then
            dataPartD = shopConfig.parts[data.part]
            newPart = dataPartD
        elseif menu == 'E' then 
            dataPartE = shopConfig.parts[data.part]
            newPart = dataPartE
        end
        
        NyoModulesClient.sendNUIMessage('updateSkinShop', {
            newPart = newPart,
            drawa = getSkinShopDrawables(newPart),
            menu = menu
        })
        cb({})
    end)


    NyoModulesClient.registerNUICallback('close', function(data,cb)
        NyoModulesClient.disableHidingPlayers()
        NyoModulesClient.enableMarkerType(1)
        SetNuiFocus(false, false)
        DeleteCam()
        local exp = exports["hud"]:showHud(true)
        FreezeEntityPosition(plyPed, false)
        inShop = false
        if _closed then
            dataC = getCustomization()
            -- print(json.encode(configShop,{indent=true}))
            local success = RPC.trigger('skinshop-tryPayment', precoTotal, paymentType or 1, dataC)   
            closeGuiShop(not success)     
        else
            closeGuiShop(true)
        end
        cb({})
    end)

    NyoModulesClient.registerNUICallback('payment', function(data,cb)
        _closed = true
        NyoModulesClient.closeUI()
        cb({})
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
end)