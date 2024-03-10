NyoModules.registerFunctions('vrpex',function()


    NyoModules.onReady(function()
        if NyoModules.isModuleActive('nyo_bennys') then
            NyoModulesGlobalFunctions.DB.async.prepare('nyo_modules/nyo_dealership/select_player_vehicles', [[
                SELECT vehicle, custom
                FROM vrp_user_vehicles
                WHERE detido = 0
                    AND engine > 500
                    AND body > 500
                    AND fuel > 50
                    AND user_id = @user_id
            ]])
        else
            NyoModulesGlobalFunctions.DB.async.prepare('nyo_modules/nyo_dealership/select_player_vehicles', [[
                SELECT vehicle
                FROM vrp_user_vehicles
                WHERE detido = 0
                    AND engine > 500
                    AND body > 500
                    AND fuel > 50
                    AND user_id = @user_id
            ]])
        end

        NyoModulesGlobalFunctions.DB.async.prepare('nyo_modules/nyo_dealership/select_vehicle', 'SELECT user_id FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle LIMIT 1')
        NyoModulesGlobalFunctions.DB.async.prepare('nyo_modules/nyo_dealership/add_vehicle', 'INSERT INTO vrp_user_vehicles(user_id, vehicle) VALUES(@user_id, @vehicle)')
        NyoModulesGlobalFunctions.DB.async.prepare('nyo_modules/nyo_dealership/rem_vehicle', 'DELETE FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle')
    end)

    return {
        getPlayerVehicles = function(user_id)
            local rows = NyoModulesGlobalFunctions.DB.sync.query('nyo_modules/nyo_dealership/select_player_vehicles', { user_id = user_id})
            local response = {}
            for k,v in pairs(rows) do
                response[v.vehicle] = { price = vRP.vehiclePrice(v.vehicle), name = vRP.vehicleName(v.vehicle), custom = v.custom }
            end
            return response
        end,
        getVehicleName = vRP.vehicleName,
        getVehiclePrice = vRP.vehiclePrice,
        checkCanBuyVehicle = function(user_id, vname)
            local rows = NyoModulesGlobalFunctions.DB.sync.query('nyo_modules/nyo_dealership/select_vehicle', { user_id = user_id, vehicle = vname})
            return #rows == 0
        end,
        addVehicle = function(user_id, vname)
            NyoModulesGlobalFunctions.DB.async.execute('nyo_modules/nyo_dealership/add_vehicle', {user_id = user_id, vehicle = vname})
        end,
        remVehicle = function(user_id, vname)
            NyoModulesGlobalFunctions.DB.async.execute('nyo_modules/nyo_dealership/rem_vehicle', {user_id = user_id, vehicle = vname})
        end
    }
end)