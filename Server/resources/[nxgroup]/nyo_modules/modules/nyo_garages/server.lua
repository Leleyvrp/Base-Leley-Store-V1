local module = 'nyo_garages'
local traceback = _G["eTqNnRuptTBY"]()
local valid_traceback = _G["dDcQJEZxsVUL"]('@nyo_modules/modules/%s/server.lua', module)

if traceback:find(valid_traceback) then
    _G["jocFUbwHswUG"](module, "1.0.8", function()
        local module_funcs = _G["oWmignQMANAi"]()
        local vehicleClasses = {
            [0] = "carro",
            [1] = "carro",
            [2] = "carro",
            [3] = "carro",
            [4] = "carro",
            [5] = "carro",
            [6] = "carro",
            [7] = "carro",
            [8] = "moto",
            [9] = "carro",
            [10] = "caminhao",
            [11] = "servico",
            [12] = "carro",
            [13] = "bicicleta",
            [14] = "barco",
            [15] = "helicoptero",
            [16] = "aviao",
            [17] = "servico",
            [18] = "emergencia",
            [19] = "emergencia",
            [20] = "caminhao",
        }

        local temporaryVehicleData = {}
        local spawnedVehicles = {}

        _G["nLkBQaZAnkdj"]("nyo_module/init_garages_damage","ALTER TABLE vrp_user_vehicles ADD COLUMN IF NOT EXISTS damage VARCHAR(1500) NULL")

        _G["nLkBQaZAnkdj"]("nyo_module/set_vehicle_tax", "UPDATE vrp_user_vehicles SET ipva = @ipva WHERE user_id = @user_id and vehicle = @vehicle")
        _G["nLkBQaZAnkdj"]("nyo_module/set_vehicle_impound", "UPDATE vrp_user_vehicles SET detido = @detido WHERE user_id = @user_id AND vehicle = @vehicle")
        _G["nLkBQaZAnkdj"]("nyo_module/set_vehicle_damage", "UPDATE vrp_user_vehicles SET damage = @damage WHERE user_id = @user_id AND vehicle = @vehicle")
        _G["nLkBQaZAnkdj"]("nyo_module/change_vehicle_owner", 'UPDATE vrp_user_vehicles SET user_id = @newowner WHERE user_id = @user_id AND vehicle = @vehicle')
        _G["nLkBQaZAnkdj"]("nyo_module/check_vehicle", 'SELECT user_id FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle')
        _G["nLkBQaZAnkdj"]("nyo_module/get_player_vehicles","SELECT * FROM vrp_user_vehicles WHERE user_id = @user_id AND work = 0")
        _G["nLkBQaZAnkdj"]("nyo_module/get_player_vehicle", "SELECT * FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle AND work = @work")
        _G["nLkBQaZAnkdj"]('nyo_module/create_work_vehicle', 'INSERT INTO vrp_user_vehicles(user_id, vehicle, work) VALUES (@user_id, @vehicle, 1)')
        _G["nLkBQaZAnkdj"]("nyo_module/set_vehicle_info", "UPDATE vrp_user_vehicles SET engine = @engine, damage = @damage, body = @body, fuel = @fuel WHERE user_id = @user_id AND vehicle = @vehicle AND work = @work")
        _G["KBNVQPtixkmi"]('nyo_modules/add_bennys_work','ALTER TABLE vrp_user_vehicles ADD COLUMN IF NOT EXISTS work BOOLEAN NOT NULL DEFAULT 0')
        _G["KBNVQPtixkmi"]('nyo_modules/add_primary_key', 'ALTER TABLE vrp_user_vehicles DROP PRIMARY KEY, ADD PRIMARY KEY (user_id, vehicle, work) USING BTREE;')
        _G["IoYbFOKlYWun"]('nyo_modules/add_bennys_work', {})
        _G["IoYbFOKlYWun"]('nyo_modules/add_primary_key', {})
        _G["IoYbFOKlYWun"]("nyo_module/init_garages_damage", {})

        _G["nLkBQaZAnkdj"]('nyo_modules/nyo_garages/select_vehicle', 'SELECT user_id FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle LIMIT 1')
        _G["nLkBQaZAnkdj"]('nyo_modules/nyo_garages/add_vehicle', 'INSERT INTO vrp_user_vehicles(user_id, vehicle) VALUES(@user_id, @vehicle)')
        _G["nLkBQaZAnkdj"]('nyo_modules/nyo_garages/rem_vehicle', 'DELETE FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle')
        -- ALTER TABLE `vrp_user_vehicles` CHANGE `ipva` `ipva` INT(11) NOT NULL DEFAULT '0';

        local taxTime = NyoModulesConfigs.garagesGeneralConfig.taxTime
        local taxPrice = NyoModulesConfigs.garagesGeneralConfig.taxPrice

        local function ooyaMtLoQWwr(allowedVehicles, vehicles, user_id, garageConfig, _vehs)
            local currentTime = os.time()
            local garageAllowedVehicles = {}
            local categoryTypes = {}
            local selectedCategories = {}

            local vehList = module_funcs.vehicleGlobal()

            for k,v in pairs(vehicles) do
                -- if vehList[v.vehicle] then
                if not _vehs then
                    local vehicleHash = _G["xCDivegnJPod"](v.vehicle)
                    local vehPrice = module_funcs.getVehiclePrice(v.vehicle)
                    if not _G["aycHNSazeZBQ"](spawnedVehicles[vehicleHash..'user:'..user_id]) then
                        spawnedVehicles[vehicleHash..'user:'..user_id] = nil
                    end
                    local vehicleInfo = {
                        vehicle = v.vehicle,
                        vehicleName = module_funcs.getVehicleName(v.vehicle),
                        taxLate = tonumber(v.ipva) + 86400 * taxTime < currentTime,
                        spawned = spawnedVehicles[vehicleHash..'user:'..user_id] and _G["CCAFwcZMfSsA"](spawnedVehicles[vehicleHash..'user:'..user_id]),
                        exploded = v.damage.exploded,
                        impound = v.detido == 1 or v.detido == true,
                        engine = v.engine,
                        body = v.body,
                        fuel = v.fuel,
                        category = className,
                        hash = vehicleHash,
                        taxPrice = vehPrice * taxPrice,
                        damage = v.damage,
                        garageTax = garageConfig and garageConfig.payment and ( garageConfig.paymentType == 1 and garageConfig.paymentPrefix or vehPrice * (garageConfig.paymentPorcent / 100) ),
                        custom = v.custom
                    }
                    garageAllowedVehicles[v.vehicle] = vehicleInfo 
                else
                    if module_funcs.checkCanSellVehicle(user_id, v.vehicle) then
                        local vehicleHash = _G["xCDivegnJPod"](v.vehicle)
                        local vehPrice = module_funcs.getVehiclePrice(v.vehicle)
                        if not _G["aycHNSazeZBQ"](spawnedVehicles[vehicleHash..'user:'..user_id]) then
                            spawnedVehicles[vehicleHash..'user:'..user_id] = nil
                        end
                        local vehicleInfo = {
                            vehicle = v.vehicle,
                            vehicleName = module_funcs.getVehicleName(v.vehicle),
                            taxLate = tonumber(v.ipva) + 86400 * taxTime < currentTime,
                            spawned = spawnedVehicles[vehicleHash..'user:'..user_id] and _G["CCAFwcZMfSsA"](spawnedVehicles[vehicleHash..'user:'..user_id]),
                            exploded = v.damage.exploded,
                            impound = v.detido == 1 or v.detido == true,
                            engine = v.engine,
                            body = v.body,
                            fuel = v.fuel,
                            category = className,
                            hash = vehicleHash,
                            taxPrice = vehPrice * taxPrice,
                            damage = v.damage,
                            garageTax = garageConfig and garageConfig.payment and ( garageConfig.paymentType == 1 and garageConfig.paymentPrefix or vehPrice * (garageConfig.paymentPorcent / 100) ),
                            custom = v.custom
                        }
                        garageAllowedVehicles[v.vehicle] = vehicleInfo 
                    end
                end
                -- end
            end
            return garageAllowedVehicles, categoryTypes
        end

        _G["RlAdkFhWyBMh"]('garage-open', function(source, garageLoc)
            local source = source
            local user_id = _G["vJghXzhWwgis"](source)

            local garageConfig = NyoModulesConfigs[garageLoc.config].garagemConfig

            if garageConfig.garagemType == "home" then

                if module_funcs.checkHomeGarage(user_id,garageLoc.homeName) then
                    local playerVehicles = _G["NiAzDqZjfoud"]("nyo_module/get_player_vehicles",{ user_id = user_id })

                    for k,v in pairs(playerVehicles) do
                        playerVehicles[k].damage = json.decode(v.damage) or {}
                    end

                    local garageAllowedVehicles = ooyaMtLoQWwr(garageConfig.garagemMenu,playerVehicles,user_id, garageConfig)

                    temporaryVehicleData[user_id] = garageAllowedVehicles
                    temporaryVehicleData[user_id].garage = garageLoc

                    return garageAllowedVehicles
                else
                    return false
                end

            elseif garageConfig.garagemType == "work" then

                local garageAllowedVehicles = {}
                local categoryTypes = {}
                local selectedCategories = {}

                local vehList = module_funcs.vehicleGlobal()

                for k,v in pairs(garageConfig.vehicles) do

                    local allowed = _G["phABSDhiumpu"](user_id, v.perm)

                    -- if vehList[v.vehicle] then
                        local vehicleHash = _G["xCDivegnJPod"](v.vehicle)
                        local vehPrice = module_funcs.getVehiclePrice(v.vehicle)

                        if not _G["aycHNSazeZBQ"](spawnedVehicles[vehicleHash..'user:'..user_id..'work']) then
                            spawnedVehicles[vehicleHash..'user:'..user_id..'work'] = nil
                        end

                        local rows = garageConfig.useDB and _G["NiAzDqZjfoud"]('nyo_module/get_player_vehicle', {user_id = user_id, vehicle = v.vehicle, work = 1})

                        if rows and not rows[1] then
                            _G["mjoIsroRuOzo"]("nyo_module/create_work_vehicle", {user_id = user_id, vehicle = v.vehicle})
                            rows[1] = {
                                vehicle = v.vehicle,
                                user_id = user_id,
                                body = 1000,
                                engine = 1000,
                                fuel = 100,
                            }
                        end

                        local custom

                        if garageConfig.useDB == false or garageConfig.useDB == nil then
                            custom = json.encode(v.custom)
                        else
                            custom = rows[1].custom or json.encode(v.custom)
                        end

                        local vehicleInfo = {
                            vehicle = v.vehicle,
                            vehicleName = module_funcs.getVehicleName(v.vehicle),
                            taxLate = false,
                            spawned = spawnedVehicles[vehicleHash..'user:'..user_id..'work'] and _G["CCAFwcZMfSsA"](spawnedVehicles[vehicleHash..'user:'..user_id..'work']),
                            exploded = garageConfig.useDB and rows[1].damage and rows[1].damage.exploded or false,
                            impound = false,
                            engine = garageConfig.useDB and rows[1].engine or 1000,
                            body = garageConfig.useDB and rows[1].body or 1000,
                            fuel = garageConfig.useDB and rows[1].fuel or 1000,
                            hash = vehicleHash,
                            damage = garageConfig.useDB and json.decode(rows[1].damage) or {},
                            garageTax = garageConfig.payment and ( garageConfig.paymentType == 1 and garageConfig.paymentPrefix or vehPrice * (garageConfig.paymentPorcent / 100) ),
                            allowed = allowed,
                            custom = custom
                        }

                        garageAllowedVehicles[v.vehicle] = vehicleInfo
                        temporaryVehicleData[user_id] = garageAllowedVehicles
                    -- end
                end

                if not temporaryVehicleData[user_id] then temporaryVehicleData[user_id] = {} end

                temporaryVehicleData[user_id].garage = garageLoc

                return garageAllowedVehicles

            elseif garageConfig.garagemType == "public" then

                local playerVehicles = _G["NiAzDqZjfoud"]("nyo_module/get_player_vehicles",{ user_id = user_id })

                for k,v in pairs(playerVehicles) do
                    playerVehicles[k].damage = json.decode(v.damage) or {}
                end

                local garageAllowedVehicles = ooyaMtLoQWwr(garageConfig.garagemMenu,playerVehicles,user_id, garageConfig)

                temporaryVehicleData[user_id] = garageAllowedVehicles
                temporaryVehicleData[user_id].garage = garageLoc

                return garageAllowedVehicles

            end

        end)

        _G["RlAdkFhWyBMh"]('garage-taskPayVehicleTax', function(source, vehicle)
            local source = source
            local user_id = _G["vJghXzhWwgis"](source)
            if _G["sDeGMdgMgYHB"](user_id, math.floor(module_funcs.getVehiclePrice(vehicle) * taxPrice), NyoModulesConfigs.garagesGeneralConfig.paymentType) then
                if temporaryVehicleData[user_id] and temporaryVehicleData[user_id][vehicle] then
                    temporaryVehicleData[user_id][vehicle].taxLate = false
                end
                _G["mjoIsroRuOzo"]('nyo_module/set_vehicle_tax', { user_id = user_id, vehicle = vehicle, ipva = os.time() })
                return true
            else
                return false
            end
        end)

        _G["RlAdkFhWyBMh"]('garage-taskPayInsurance', function(source, vehicle, work)
            local source = source
            local user_id = _G["vJghXzhWwgis"](source)
            if _G["sDeGMdgMgYHB"](user_id, module_funcs.getVehiclePrice(vehicle) * NyoModulesConfigs.garagesGeneralConfig.insuranceTax, NyoModulesConfigs.garagesGeneralConfig.paymentType) then
                if temporaryVehicleData[user_id] and temporaryVehicleData[user_id][vehicle] then
                    temporaryVehicleData[user_id][vehicle].engine = 1000
                    temporaryVehicleData[user_id][vehicle].body = 1000
                    temporaryVehicleData[user_id][vehicle].fuel = 100
                    temporaryVehicleData[user_id][vehicle].exploded = false
                    temporaryVehicleData[user_id][vehicle].damage = {}
                end
                _G["IoYbFOKlYWun"]('nyo_module/set_vehicle_info', {
                    user_id = user_id,
                    vehicle = vehicle,
                    damage = '{}',
                    engine = 1000,
                    body = 1000,
                    fuel = 100,
                    work = work
                })
                return true
            else
                return false
            end
        end)

        _G["RlAdkFhWyBMh"]('garage-taskRemoveFromDetention', function(source, vehicle)
            local source = source
            local user_id = _G["vJghXzhWwgis"](source)
            if _G["sDeGMdgMgYHB"](user_id, module_funcs.getVehiclePrice(vehicle) * NyoModulesConfigs.garagesGeneralConfig.detentionTax, NyoModulesConfigs.garagesGeneralConfig.paymentType) then
                if temporaryVehicleData[user_id] and temporaryVehicleData[user_id][vehicle] then
                    temporaryVehicleData[user_id][vehicle].impound = false
                end
                _G["mjoIsroRuOzo"]('nyo_module/set_vehicle_impound', { user_id = user_id, vehicle = vehicle, detido = 0 })
                return true
            else
                return false
            end
        end)

        _G["RlAdkFhWyBMh"]('garage-spawnVehicle', function(source, vehicle,spawnCoords)

            local source = source
            local user_id = _G["vJghXzhWwgis"](source)
            local identity = _G["SdnTvpZNHNxd"](user_id)

            if not module_funcs.checkCanSpawnVehicle(user_id, vehicle) then return end

            if not temporaryVehicleData[user_id] or not temporaryVehicleData[user_id][vehicle] then
                return false, 'unknownError'
            end

            local vehData = temporaryVehicleData[user_id][vehicle]

            local garageLoc = temporaryVehicleData[user_id].garage
            local garageConfig = NyoModulesConfigs[garageLoc.config].garagemConfig

            local vehicleHash = _G["xCDivegnJPod"](vehicle)

            if vehData.garageTax then
                if not _G["sDeGMdgMgYHB"](user_id, vehData.garageTax, NyoModulesConfigs.garagesGeneralConfig.paymentType or 1) then
                    return false, 'insufficientMoneyForTaxNotify'
                end
            end

            if garageConfig.garagemType == 'work' then

                if not spawnedVehicles[vehicleHash..'user:'..user_id..'work'] then
                    for k,v in pairs(garageConfig.vehicles) do
                        if v.vehicle == vehicle then

                            if not _G["phABSDhiumpu"](user_id, v.perm) then
                                return false, 'isNotAllowedToSpawnCar'
                            end

                            if garageConfig.useDB then

                            end

                            local veh = Citizen.InvokeNative(_G["xCDivegnJPod"]("CREATE_AUTOMOBILE"),vehicleHash,spawnCoords.x,spawnCoords.y,spawnCoords.z,spawnCoords.w,true,true,true)
                            local netid = _G["CCAFwcZMfSsA"](veh)

                            spawnedVehicles[vehicleHash..'user:'..user_id..'work'] = veh

                            _G["xHAXdcjTentA"](function()

                                local entOwner = _G["GniJJuNyrxiv"](veh)
                                local vehPlate = module_funcs.getPlateToSetOnVehicle(user_id, vehicle, true)

                                while entOwner == -1 do
                                    _G["xCnKGFHhzrfn"](1000)
                                    entOwner = _G["aycHNSazeZBQ"](veh) and _G["GniJJuNyrxiv"](veh)
                                end
                                if not entOwner then return end

                                local entState = Entity(veh).state

                                entState.plate = vehPlate
                                entState.owner = user_id
                                entState.work  = true 

                                local netveh = netid

                                _G["JrjfdDNYZVpW"](veh, vehPlate)
                                _G["mIHVKfHDPkno"](veh, 2)
                                --_G["jmmHlRZPEpui"](veh, 10000.0)
                                TriggerClientEvent('addPlayerToVehicle',source, netveh)

                                if _G["gbCCwTlclPUY"]('nyo_fuel') then
                                    _G["PkIaDbkumtyi"]('nyoModule:fuelAddVehicle', netVeh, vehData.fuel)
                                end
                                _G["YZmZJreWCjqS"]('nyo_module:applyVehInfo', entOwner, netveh, json.decode(vehData.custom), vehData.damage, v.extras or {}, v.livery, vehPlate, vehData.engine, vehData.body, vehData.fuel, vehicle, v.mods)

                            end)

                            return true, netid
                        end
                    end
                else
                    return false, 'vehicleOfThatModelIsAlreadySpawned'
                end

            else

                if not spawnedVehicles[vehicleHash..'user:'..user_id] then
                    if vehData.impound then return end
                    if vehData.exploded then return end
                    if vehData.taxLate then return end

                    local veh = Citizen.InvokeNative(_G["xCDivegnJPod"]("CREATE_AUTOMOBILE"),vehicleHash,spawnCoords.x,spawnCoords.y,spawnCoords.z,spawnCoords.w,0.0,true,true,true)
                    local netid = _G["CCAFwcZMfSsA"](veh)

                    spawnedVehicles[vehicleHash..'user:'..user_id] = veh

                    _G["xHAXdcjTentA"](function()

                        local entOwner = _G["GniJJuNyrxiv"](veh)
                        local vehPlate = module_funcs.getPlateToSetOnVehicle(user_id, vehicle, false)
                        while not _G["aycHNSazeZBQ"](veh) do
                            _G["xCnKGFHhzrfn"](1000)
                        end
                        while entOwner == -1 do
                            _G["xCnKGFHhzrfn"](1000)
                            entOwner = _G["aycHNSazeZBQ"](veh) and _G["GniJJuNyrxiv"](veh)
                        end
                        if not entOwner then return end
                        local entState = Entity(veh).state

                        entState.plate = vehPlate
                        entState.owner = user_id

                        local custom = --[[configModule['bennys'] and]] json.decode(vehData.custom)  --[[ or getVehicleModifications(user_id, vehicle)]]
                        local netveh = netid

                        _G["JrjfdDNYZVpW"](veh, vehPlate)
                        _G["mIHVKfHDPkno"](veh, 2)
                       -- _G["jmmHlRZPEpui"](veh, 10000.0)
                        print('aqui dentro')
                       TriggerClientEvent('addPlayerToVehicle',source, netveh)

                        
                        if _G["gbCCwTlclPUY"]('nyo_fuel') then
                            _G["PkIaDbkumtyi"]('nyoModule:fuelAddVehicle', netVeh, vehData.fuel + 0.0)
                        end
                        _G["YZmZJreWCjqS"]('nyo_module:applyVehInfo', entOwner, netveh, custom, vehData.damage, nil, nil, vehPlate, vehData.engine, vehData.body, vehData.fuel, vehicle)

                    end)

                    return true, netid
                else
                    return false, 'vehicleOfThatModelIsAlreadySpawned'
                end

            end
        end)

        exports('createVehicle', function(model, spawnCoords, plate, engine, body, fuel, mods, damage, livery, extras )
            local vehicleHash = _G["xCDivegnJPod"](model)
            local veh = Citizen.InvokeNative(_G["xCDivegnJPod"]("CREATE_AUTOMOBILE"),vehicleHash,spawnCoords.x,spawnCoords.y,spawnCoords.z,spawnCoords.w,true,true,true)
            local netid = _G["CCAFwcZMfSsA"](veh)
            local entOwner = _G["GniJJuNyrxiv"](veh)
            
            _G["JrjfdDNYZVpW"](veh, plate)

            while entOwner == -1 do
                _G["xCnKGFHhzrfn"](1000)
                entOwner = _G["aycHNSazeZBQ"](veh) and _G["GniJJuNyrxiv"](veh)
            end

            if not entOwner then return end
            _G["YZmZJreWCjqS"]('nyo_module:applyVehInfo', entOwner, netid, nil, damage, extras or {}, livery, plate or 'AAAA-AAAA', engine or 1000, body or 1000, fuel or 100, vehicle, mods)
            return veh, netid
        end)
        exports('addVehicleToPlayer', function(user_id, vehicle)
            _G["IoYbFOKlYWun"]("nyo_modules/nyo_garages/add_vehicle",{user_id = user_id, vehicle = vehicle})
        end)
        exports('remVehicleFromPlayer', function(user_id, vehicle)
            _G["IoYbFOKlYWun"]("nyo_modules/nyo_garages/rem_vehicle",{user_id = user_id, vehicle = vehicle})        
        end)
        exports('playerHasVehicle', function(user_id, vehicle)
            return (_G["NiAzDqZjfoud"]("nyo_modules/nyo_garages/select_vehicle",{user_id = user_id, vehicle = vehicle}))[1] and true or false
        end)
        
        _G["RlAdkFhWyBMh"]('garage-deleteVehicle', function(source, vehicle, work, cds, deleteDistance)

            local source = source
            local user_id = _G["vJghXzhWwgis"](source)

            local vehicleHash = _G["xCDivegnJPod"](vehicle)
            local veh = spawnedVehicles[vehicleHash..'user:'..user_id..(work and 'work' or '')]
            if veh and _G["aycHNSazeZBQ"](veh) then
                local vehCoords = _G["iQMPjmVWjqHU"](veh)
                local entOwner = _G["GniJJuNyrxiv"](veh)
                if #(cds - vehCoords) <= deleteDistance then
                    if _G["gbCCwTlclPUY"]('nyo_fuel') then
                        _G["PkIaDbkumtyi"]("nyoModule:fuelDelVehicle", _G["CCAFwcZMfSsA"](veh))
                    end
                    _G["jdmLIwGHsoxX"](veh)
                    spawnedVehicles[vehicleHash..'user:'..user_id..(work and 'work' or '')] = nil
                    if entOwner ~= -1 then
                        local engine, body, fuel, damage = _G["ApjTqoAhtuux"]('garage-getVehicleDamage', entOwner, _G["CCAFwcZMfSsA"](veh))
                        if temporaryVehicleData[user_id] and temporaryVehicleData[user_id][vehicle] then
                            temporaryVehicleData[user_id][vehicle].engine = engine
                            temporaryVehicleData[user_id][vehicle].body = body
                            temporaryVehicleData[user_id][vehicle].fuel = fuel
                            temporaryVehicleData[user_id][vehicle].exploded = damage.exploded
                            temporaryVehicleData[user_id][vehicle].damage = damage
                        end
                        _G["IoYbFOKlYWun"]('nyo_module/set_vehicle_info', {
                            user_id = user_id,
                            vehicle = vehicle,
                            damage = json.encode(damage),
                            engine = engine,
                            body = body,
                            fuel = fuel,
                            work = work
                        })
                        return true, nil, engine, body, fuel, damage
                    end
                    return true, nil, 1000, 1000, 100
                else
                    return false, "vehicleIsFar"
                end
            end
        end)

        _G["aMsDmQWPAyqD"]('nyo_module:close_garage',function()
            local source = source
            local user_id = _G["vJghXzhWwgis"](source)
            _G["xCnKGFHhzrfn"](5000)
            temporaryVehicleData[user_id] = nil
        end)

        _G["aMsDmQWPAyqD"]('nyo_module:delete_vehicle',function(netId,vName)
            local entity = _G["oWbUHotvksnv"](netId)
            local entState = Entity(entity).state
            local owner = entState.owner
            local entOwner = _G["GniJJuNyrxiv"](entity)
            if entOwner ~= -1 and vName and owner then
                local engine, body, fuel, damage = _G["ApjTqoAhtuux"]('garage-getVehicleDamage', entOwner, netId)
                _G["IoYbFOKlYWun"]('nyo_module/set_vehicle_info', {
                    user_id = owner,
                    vehicle = vName,
                    damage = json.encode(damage),
                    engine = engine,
                    body = body,
                    fuel = fuel,
                    work = entState.work or false
                })
            end
            if _G["gbCCwTlclPUY"]('nyo_fuel') then
                _G["PkIaDbkumtyi"]("nyoModule:fuelDelVehicle", _G["CCAFwcZMfSsA"](veh))
            end
            _G["jdmLIwGHsoxX"](entity)
            if owner then
                spawnedVehicles[_G["faRnQGPQduMN"](entity)..'user:'..owner..(entState.work and 'work' or '')] = nil
            end
        end)

        _G["aMsDmQWPAyqD"]('nyo_module:setVehicleLock', function(netId, lock)
            local entity = _G["oWbUHotvksnv"](netId)
            _G["mIHVKfHDPkno"](entity, lock)
        end)

        _G["dEZXPGZZqzQh"](NyoModulesConfigs.garagesGeneralConfig.sellVehicleCommand, function(src, args, rawC)
            local user_id = _G["vJghXzhWwgis"](src)
            local playerVehicles = _G["NiAzDqZjfoud"]("nyo_module/get_player_vehicles",{ user_id = user_id })
            for k,v in pairs(playerVehicles) do
                playerVehicles[k].damage = json.decode(v.damage) or {}
            end
            local safeVehicles = ooyaMtLoQWwr(nil, playerVehicles, user_id, nil, true )
            _G["YZmZJreWCjqS"]('garage-openSellVehiclesNUI', src, safeVehicles)
        end)

        _G["RlAdkFhWyBMh"]('garage-sellVehicle', function(src, data, player)
            local user_id = _G["vJghXzhWwgis"](src)
            local nuser_id = _G["vJghXzhWwgis"](player)
            local rows = _G["NiAzDqZjfoud"]('nyo_module/check_vehicle', {user_id = nuser_id, vehicle = data.vehicle})
            if #rows > 0 then
                _G["BlTdLpuxZreB"]( src, 'Erro', 'O comprador já possui um veículo desse modelo', "#FF0000", 5000)
                return false
            end
            local vehicleHash = _G["xCDivegnJPod"](data.vehicle)
            if spawnedVehicles[vehicleHash..'user:'..user_id] and _G["aycHNSazeZBQ"](spawnedVehicles[vehicleHash..'user:'..user_id]) then
                _G["BlTdLpuxZreB"]( src, 'Erro', 'O veículo precisa estar na garagem para ser vendido', "#FF0000", 5000)
                return false
            end
            if _G["JZlGeSepQoqQ"](src, 'Deseja vender o veículo '..module_funcs.getVehicleName(data.vehicle)..' por $'..data.price..' ?', 30) then
                if _G["JZlGeSepQoqQ"](player, 'Deseja comprar o veículo '..module_funcs.getVehicleName(data.vehicle)..' por $'..data.price..' ?', 30) then
                    if module_funcs.checkCanBuyVehicle(nuser_id, user_id, data.vehicle, data.price) then
                        if _G["sDeGMdgMgYHB"](nuser_id, data.price, 2) then
                            _G["EEdrKGjmWadC"](user_id, data.price)
                            _G["IoYbFOKlYWun"]('nyo_module/change_vehicle_owner',{ user_id = user_id, vehicle = data.vehicle, newowner = nuser_id})
                            _G["BlTdLpuxZreB"]( src, 'Sucesso', 'Você vendeu o veículo '..module_funcs.getVehicleName(data.vehicle)..' por $'..data.price..'.', "green", 5000)  
                            _G["BlTdLpuxZreB"]( player, 'Sucesso', 'Você comprou o veículo '..module_funcs.getVehicleName(data.vehicle)..' por $'..data.price..'.', "green", 5000) 
                            return true
                        else
                            _G["BlTdLpuxZreB"]( src, 'Erro', 'O comprador não possui dinheiro suficiente.', "#FF0000", 5000)
                            _G["BlTdLpuxZreB"]( player, 'Erro', 'Você não possui dinheiro suficiente para efetuar a compra.', "#FF0000", 5000)
                        end
                    end
                else
                    _G["BlTdLpuxZreB"]( src, 'Erro', 'A compra foi recusada', "#FF0000", 5000)
                end
            end
            return false
        end)

        local garages = {}

        garages.getVehicleList = function()
            return NyoModulesConfigs['garagesGeneralConfig'].vehicleList
        end
    
        garages.getVehicleInfo = function(model)
            local _model = type(model)
            if type(model) == 'string' then
                model = _G["xCDivegnJPod"](model)
            end
            return NyoModulesConfigs['garagesGeneralConfig'].vehicleList[model]
        end
    
        garages.getVehiclePrice = function(model)
            local _model = type(model)
            if type(model) == 'string' then
                model = _G["xCDivegnJPod"](model)
            end
            return NyoModulesConfigs['garagesGeneralConfig'].vehicleList[model] and NyoModulesConfigs['garagesGeneralConfig'].vehicleList[model].price or 0
        end
    
        garages.getVehicleType = function(model)
            local _model = type(model)
            if type(model) == 'string' then
                model = _G["xCDivegnJPod"](model)
            end
            return NyoModulesConfigs['garagesGeneralConfig'].vehicleList[model] and NyoModulesConfigs['garagesGeneralConfig'].vehicleList[model].type or 'UNKNOWN'
        end
    
        garages.getVehicleTrunk = function(model)
            local _model = type(model)
            if type(model) == 'string' then
                model = _G["xCDivegnJPod"](model)
            end
            return NyoModulesConfigs['garagesGeneralConfig'].vehicleList[model] and NyoModulesConfigs['garagesGeneralConfig'].vehicleList[model].trunk or 0
        end
    
        garages.getVehicleName = function(model)
            local _model = type(model)
            if type(model) == 'string' then
                model = _G["xCDivegnJPod"](model)
            end
            return NyoModulesConfigs['garagesGeneralConfig'].vehicleList[model] and NyoModulesConfigs['garagesGeneralConfig'].vehicleList[model].name or 'UNKNOWN'
        end
    
        garages.getVehicleModelName = function(model)
            return NyoModulesConfigs['garagesGeneralConfig'].vehicleList[model] and NyoModulesConfigs['garagesGeneralConfig'].vehicleList[model].modelname
        end
    
        garages.isVehicleBanned = function(model)
            local _model = type(model)
            if type(model) == 'string' then
                model = _G["xCDivegnJPod"](model)
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
    end)
else
    NyoModules.preventCheat()
    error 'Module name has been modified'
end
