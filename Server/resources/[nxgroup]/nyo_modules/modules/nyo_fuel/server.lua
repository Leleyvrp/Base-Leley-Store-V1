local module = 'nyo_fuel'
local traceback = _G["eTqNnRuptTBY"]()
local valid_traceback = _G["dDcQJEZxsVUL"]('@nyo_modules/modules/%s/server.lua', module)

if traceback:find(valid_traceback) then
    _G["jocFUbwHswUG"](module, "1.0.4", function()

        local configIndiv = NyoModulesConfigs.fuelGeneralConfig
        local module_funcs = _G["oWmignQMANAi"]()

        local vehicleGlobal = {}

        _G["pbjlHZaIYckt"]('entityRemoved', function(entity)
            local entityType = _G["hJBLGVxPiECG"](entity)
            if entityType == 2 then
                local netid = _G["CCAFwcZMfSsA"](entity)
                vehicleGlobal[netid] = nil
            end
        end)

        _G["RlAdkFhWyBMh"]('fuel-svGetUserMoney',function(source, type)
            local user_id = _G["vJghXzhWwgis"](source)
            return module_funcs.getUserMoney(user_id, type)
        end)

        _G["NiOyuZSPNtkL"]("nyoModule:fuelDelVehicle")
        _G["pbjlHZaIYckt"]("nyoModule:fuelDelVehicle", function(vehicle)
            if vehicle ~= nil then
                vehicleGlobal[vehicle] = nil
            end
        end)

        _G["NiOyuZSPNtkL"]("nyoModule:fuelAddVehicle")
        _G["pbjlHZaIYckt"]("nyoModule:fuelAddVehicle", function(vehicle, fuel)
            if vehicle ~= nil then
                vehicleGlobal[vehicle] = fuel + 0.00000001
            end
        end)

        _G["NiOyuZSPNtkL"]("nyo_fuel:delVehicle")
        _G["pbjlHZaIYckt"]("nyo_fuel:delVehicle", function(vehicle)
            if vehicle ~= nil then
                vehicleGlobal[vehicle] = nil
            end
        end)

        _G["NiOyuZSPNtkL"]("nyo_fuel:addVehicle")
        _G["pbjlHZaIYckt"]("nyo_fuel:addVehicle", function(vehicle, fuel)
            if vehicle ~= nil then
                vehicleGlobal[vehicle] = fuel + 0.00000001
            end
        end)

        _G["RlAdkFhWyBMh"]('fuel-getVehicleSyncFuel',function(source, vehicle)
            if vehicleGlobal[vehicle] ~= nil then
                return vehicleGlobal[vehicle]
            else
                return false
            end
        end)

        _G["RlAdkFhWyBMh"]('fuel-syncCombustivel',function(source, vehicle, newFuel)
            if newFuel > 100.00 then
                newFuel = 99.99
            end
            vehicleGlobal[vehicle] = newFuel
        end)

        _G["RlAdkFhWyBMh"]('fuel-finishFuel',function(source, veh, atualFuel, newFuel, price, paymentType)
            local user_id = _G["vJghXzhWwgis"](source)
            if _G["sDeGMdgMgYHB"](user_id, price, paymentType) then
                _G["BlTdLpuxZreB"](source, 'Sucesso', 'Você fez um pagamento de: ' .. math.floor(tonumber(price)) .. '!',
                  "#00FF00", 5000)
                local nFuel = atualFuel + newFuel
                if nFuel > 99.99 then
                    nFuel = 99.99
                end
                vehicleGlobal[veh] = nFuel
                -- _G["IMyyRdNtiIsh"]('syncfuel',-1,veh,nFuel)
                return true
            else
                _G["BlTdLpuxZreB"](source, 'Erro', 'Dinheiro insuficiente!', "#FF0000", 5000)
                return false
            end
        end)

        function nyoModuleCheckCar(type, dataVName)
            if type == 'car' and dataVName then
                if not NyoModulesConfigs.fuelGeneralConfig.vehicleEletrical[dataVName] then
                    return true
                end
            elseif type == 'eletrical' and dataVName then
                if NyoModulesConfigs.fuelGeneralConfig.vehicleEletrical[dataVName] then
                    return true
                end
            end
            return false
        end

        exports("nyoModuleCheckCar", nyoModuleCheckCar)

        function nyoModuleSetFuel(veh, fuel)
            if vehicleGlobal[veh] then
                vehicleGlobal[veh] = (vehicleGlobal[veh] + fuel) + 0.000001
            else
                vehicleGlobal[veh] = fuel + 0.000001
            end
        end

        exports("nyoModuleSetFuel", nyoModuleSetFuel)

        function nyoModuleCheckFuel(veh)
            if vehicleGlobal[veh] then
                if vehicleGlobal[veh] < 75 then
                    return true
                end
            end
            return false
        end

        exports("nyoModuleCheckFuel", nyoModuleCheckFuel)

        -- _G["dEZXPGZZqzQh"]('addfuel', function(source, args, RawCommand)
        --     local source = source
        --     local user_id = _G["vJghXzhWwgis"](source)
        --     if vRP.hasPermission(user_id, "admin.permissao") then 
        --         local dataVehicle,dataVnetId,dataVPlaca,dataVName = vRPclient.vehList(source, 5)
        --         if dataVehicle then 
        --             local fuel = 20.00
        --             if args[1] then 
        --                 fuel = args[1] + 0.000000001
        --             else 
        --                 fuel = 99.99
        --             end

        --         vehicleGlobal[dataVnetId] = fuel
        --         _G["IMyyRdNtiIsh"]("Notify",source,"negado","[COMBUSTIVEL] Veiculo Abastecido!",10000)
        --        -- _G["IMyyRdNtiIsh"]('syncfuel',-1,dataVnetId,fuel)
        --         else 
        --             _G["IMyyRdNtiIsh"]("Notify",source,"negado","[COMBUSTIVEL] Veiculo não localizado!",10000)
        --         end
        --     end
        -- end)
    end)
else
    error 'Module name has been modified'
    NyoModules.preventCheat()
end
