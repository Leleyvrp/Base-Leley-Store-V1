NyoModules.registerNyoModule('nyo_cloakroom', function()
    local cloakRoomConfig = {} 
    local configIndex

    NyoModulesClient.registerInterface(1)

    local function parse_part(key)
        if type(key) == "string" and string.sub(key,1,1) == "p" then
            return true,tonumber(string.sub(key,2))
        else
            return false,tonumber(key)
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

    NyoModulesClient.registerKeyPress(function(v,k)
        configIndex = v.config
        NyoModulesClient.disableMarkerType(1)
        exports.smartphone:closeSmartphone()
        local config = NyoModulesConfigs[v.config].cloakConfig
        local ped = plyPed
        cloakRoomConfig = config

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

        NyoModulesClient.openUI({
            sexo = prefix,
            config = config
        })
        SetNuiFocus(true, true)
    end)

    NyoModulesClient.registerNUICallback("close", function(data, cb)
        NyoModulesClient.enableMarkerType(1)
        SetNuiFocus(false, false)
    end)

    NyoModulesClient.registerNUICallback("changeClothe",function(data,cb)
        local custom = RPC.trigger('cloakroom-changeCloakClothe', data.id, configIndex, data.sexo, getCustomization())
        if custom then
            setCustomization(custom)
        end
    end)
    
end)