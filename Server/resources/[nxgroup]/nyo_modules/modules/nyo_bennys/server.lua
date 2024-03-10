local module = 'nyo_bennys'
local traceback = _G["eTqNnRuptTBY"]()
local valid_traceback = _G["dDcQJEZxsVUL"]('@nyo_modules/modules/%s/server.lua', module)

if traceback:find(valid_traceback) then
    _G["jocFUbwHswUG"](module, "2.0.0", function()
        local functions = _G["oWmignQMANAi"]()

        _G["KBNVQPtixkmi"]('nyo_modules/add_bennys_custom','ALTER TABLE vrp_user_vehicles ADD COLUMN IF NOT EXISTS custom VARCHAR(1500) NULL')
        _G["mjoIsroRuOzo"]('nyo_modules/add_bennys_custom', {})
        
        _G["QyjvWPWbXeFq"](function()
            if _G["gbCCwTlclPUY"]('nyo_garages') then
                -- _G["nLkBQaZAnkdj"]('nyo_modules/set_work_vehicle_custom', 'REPLACE vrp_user_vehicles(user_id, vehicle, custom, work) VALUES(@user_id, @vehicle, @custom, @work)')
                _G["nLkBQaZAnkdj"]('nyo_modules/set_vehicle_custom', 'UPDATE vrp_user_vehicles SET custom = @custom WHERE user_id = @user_id AND vehicle = @vehicle AND work = @work')
                _G["nLkBQaZAnkdj"]('nyo_modules/get_vehicle_custom', 'SELECT custom FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle AND work = @work')      
            else
                _G["nLkBQaZAnkdj"]('nyo_modules/set_vehicle_custom', 'UPDATE vrp_user_vehicles SET custom = @custom WHERE user_id = @user_id AND vehicle = @vehicle')   
                _G["nLkBQaZAnkdj"]('nyo_modules/get_vehicle_custom', 'SELECT custom FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle')                    
            end
        end)

        _G["nLkBQaZAnkdj"]('nyo_modules/get_vehicle_custom', 'SELECT custom FROM WHERE user_id = @user_id AND vehicle = @vehicle')
        
        local function czUjKIvnliFa()
            _G["KBNVQPtixkmi"]('nyo_modules/bennys_convert_select', [[SELECT * 
            FROM vrp_user_vehicles A
            LEFT JOIN vrp_srv_data B
            ON B.dkey = CONCAT("custom:u",A.user_id,"veh_",A.vehicle)
            WHERE A.custom IS NULL
            AND B.dkey IS NOT NULL]])
            
            local rows = _G["NiAzDqZjfoud"]('nyo_modules/bennys_convert_select',{})
            for k,v in pairs(rows) do
                if v.dvalue then
                    local custom = json.decode(v.dvalue)
                    if custom then
                        local new = {}
                        if custom.customPcolor then
                            
                            for i = 0, 49 do
                                new[i] = custom[tostring(i)]
                            end

                            new.primaryColour = { r = custom.customPcolor[1], g = custom.customPcolor[2], b = custom.customPcolor[3] }
                            new.secondaryColour = { r = custom.customScolor[1], g = custom.customScolor[2], b = custom.customScolor[3] }
                            new.pearlescentColour = custom.extracolor[1]
                            new.wheelColour = custom.extracolor[2]
                            new.windowTint = custom.windowtint
                            new.tyreSmokeColour = { r = custom.smokecolor[1], g = custom.smokecolor[2], b = custom.smokecolor[3] }
                            new.xenonColour = custom.xenoncolor
                            new.plate = custom.plateindex
                            new.wheelType = custom.wheeltype
                            
                            new.neon = {
                                color = { r = custom.neoncolor[1], g = custom.neoncolor[2], b = custom.neoncolor[3] },
                            }
                            
                            for i = 0, 3 do
                                new.neon[i] = custom.neon
                            end
                        else
                            new[0]  = custom.spoiler
                            new[1]  = custom.fbumper
                            new[2]  = custom.rbumper
                            new[3]  = custom.skirts
                            new[4]  = custom.exhaust
                            new[5]  = custom.rollcage
                            new[6]  = custom.grille
                            new[7]  = custom.hood
                            new[8]  = custom.fenders
                            new[10] = custom.roof
                            new[11] = custom.engine
                            new[12] = custom.brakes
                            new[13] = custom.transmission
                            new[14] = custom.horn
                            new[15] = custom.suspension
                            new[16] = custom.armor
                            new[23] = custom.tires
                            new[23] = custom.tiresvariation
                            new[24] = custom.btires
                            new[24] = custom.btiresvariation
                            new[25] = custom.plateholder
                            new[26] = custom.vanityplates
                            new[27] = custom.trimdesign
                            new[28] = custom.ornaments
                            new[29] = custom.dashboard
                            new[30] = custom.dialdesign
                            new[31] = custom.doors
                            new[32] = custom.seats
                            new[33] = custom.steeringwheels
                            new[34] = custom.shiftleavers
                            new[35] = custom.plaques
                            new[36] = custom.speakers
                            new[37] = custom.trunk
                            new[38] = custom.hydraulics
                            new[39] = custom.engineblock
                            new[40] = custom.camcover
                            new[41] = custom.strutbrace
                            new[42] = custom.archcover
                            new[43] = custom.aerials
                            new[44] = custom.roofscoops
                            new[45] = custom.tank
                            new[46] = custom.doors
                            new[48] = custom.liveries
                            new[20] = custom.tyresmoke
                            new[22] = custom.headlights
                            new[18] = custom.turbo
                            new.pearlescentColour = custom.extracolor[1]
                            new.wheelColour = custom.extracolor[2]
                            new.neon = {
                                color = { r = custom.neoncolor[1], g = custom.neoncolor[2], b = custom.neoncolor[3] },
                            }
                            new.xenonColour = custom.xenoncolor
                            new.plate = custom.plateindex
                            new.wheelType = custom.wheeltype
                            new.windowTint = custom.windowtint
                            
                            for i = 0, 3 do
                                new.neon[i] = custom.neon
                            end
                        end
                        _G["IoYbFOKlYWun"]('nyo_modules/set_vehicle_custom', { user_id = v.user_id, vehicle = v.vehicle, custom = json.encode(new) })

                    end
                end
            end
        end

        _G["dEZXPGZZqzQh"]('nyo_modules:nyo_bennys:database_convert', function()
            czUjKIvnliFa()
        end, true)

        _G["RlAdkFhWyBMh"]('bennys-checkIsWork', function(src, netveh)
            return Entity(_G["oWbUHotvksnv"](netveh)).state.work
        end)

        _G["RlAdkFhWyBMh"]('bennys-tryPayment', function(source, vehicleModel, oldCustom, newCustom, bennysConfig, plate, paymentType, netid)
            local user_id = _G["vJghXzhWwgis"](source)
            local owner_id = functions.getVehicleOwnerByPlayer(plate)

            console.debug('^3[ BENNYS ] ^7Try payment from '..user_id)

            local entity = _G["oWbUHotvksnv"](netid)

            local payPrice = 0
            local neededItems = {}

            for k,v in pairs(newCustom) do
                local kCfg = bennysConfig[k]
                local typeV = type(v)
                if k == 'wheelType' then
                elseif k == 23 then
                    if v ~= oldCustom[k] or newCustom.wheelType ~= oldCustom.wheelType then
                        if kCfg.price then
                            payPrice = payPrice + (kCfg.price + (kCfg.increaseBy * v))
                        end
                        if kCfg.requireItem then
                            neededItems[kCfg.item.index] = neededItems[kCfg.item.index] or 0 + kCfg.item.qtd
                        end
                    end
                elseif k == 'neon' then
                    for i = 0,3 do
                        if v[i] ~= oldCustom[k][i] then
                            if kCfg.toggle.price then
                                payPrice = payPrice + (kCfg.toggle.price)
                            end
                            if kCfg.toggle.requireItem then
                                neededItems[kCfg.toggle.item.index] = neededItems[kCfg.toggle.item.index] or 0 + kCfg.toggle.item.qtd
                            end
                        end
                    end
                    if not _G["gsulqvCtyice"](v.color,oldCustom[k].color) then
                        if kCfg.color.price then
                            payPrice = payPrice + (kCfg.color.price)
                        end
                        if kCfg.color.requireItem then
                            neededItems[kCfg.color.item.index] = neededItems[kCfg.color.item.index] or 0 + kCfg.color.item.qtd
                        end
                    end
                elseif k == 'customTires1' or k == 'customTires2' then
                    if typeV == 'table' and not _G["gsulqvCtyice"](v,oldCustom[k]) or v ~= oldCustom[k] and typeV ~= 'table' then
                        kCfg = bennysConfig.customTires
                        if kCfg.price then
                            payPrice = payPrice + (kCfg.price)
                        end
                        if kCfg.requireItem then
                            neededItems[kCfg.item.index] = (neededItems[kCfg.item.index] or 0) + kCfg.item.qtd
                        end
                    end
                else
                    if typeV == 'table' and not _G["gsulqvCtyice"](v,oldCustom[k]) or v ~= oldCustom[k] and typeV ~= 'table' then
                        if kCfg.price then
                            if typeV == 'table' or typeV == 'boolean' then                                 
                                payPrice = payPrice + kCfg.price
                            else                                 
                                payPrice = payPrice + (kCfg.price + (kCfg.increaseBy * v))
                            end
                        end
                        if kCfg.requireItem then
                            neededItems[kCfg.item.index] = (neededItems[kCfg.item.index] or 0) + kCfg.item.qtd
                        end
                    end
                end
            end

            for k,v in pairs(neededItems) do
                if _G["gDtDlxkeHAAb"](user_id, k) < v then
                    return false, 'Itens insuficientes!'
                end
            end
            if _G["sDeGMdgMgYHB"](user_id,payPrice,paymentType) then
                for k,v in pairs(neededItems) do
                    _G["AGCTXzaQqaSI"](user_id, k, v)
                end
                local work = _G["gbCCwTlclPUY"]('nyo_garages') and Entity(entity).state.work
                _G["IoYbFOKlYWun"]('nyo_modules/set_vehicle_custom', {custom = json.encode(newCustom), user_id = owner_id, vehicle = vehicleModel, work = work or false})
                return true
            else
                return false, 'Dinheiro insuficiente'
            end

        end)

        _G["aMsDmQWPAyqD"]("nyo_modules:applyVehicleCustomization",function(netid)
            local entity = _G["oWbUHotvksnv"](netid)
            local work = Entity(entity).state.work
            local plate = _G["pDCfOfnfgDeb"](entity)
            local user_id = functions.getVehicleOwnerByPlayer(plate)
            local vehicleModel = functions.getVehicleModelName(netid, entity)
            local rows = _G["NiAzDqZjfoud"]('nyo_modules/get_vehicle_custom', {user_id = user_id, vehicle = vehicleModel, work = work})
            local vehCustom = rows[1] and rows[1].custom
            console.debug('^3[ BENNYS ] ^7Apply vehicle custom '..user_id..' | '..vehicleModel..' | '..plate)
            if vehCustom then
                local data = json.decode(vehCustom)
                if data then
                    _G["IMyyRdNtiIsh"]('nyo_modules:applyVehicleCustomization', _G["GniJJuNyrxiv"](entity), netid, data)
                end
            end
        end)
    end)
else
    error 'Module name has been modified'
    NyoModules.preventCheat()
end