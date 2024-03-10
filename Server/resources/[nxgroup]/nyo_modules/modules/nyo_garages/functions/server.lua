NyoModules.registerFunctions('vrpex',function()

    -- ------------------------------------------------------------------- --
    -- DB PREPARES CREATIVE & ZIRIX
    -- ------------------------------------------------------------------- --
    NyoModules.onReady(function()
        NyoModulesGlobalFunctions.DB.async.prepare("creative/get_vehicle","SELECT * FROM vrp_user_vehicles WHERE user_id = @user_id")
        NyoModulesGlobalFunctions.DB.async.prepare("creative/rem_vehicle","DELETE FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle")
        NyoModulesGlobalFunctions.DB.async.prepare("creative/get_vehicles","SELECT * FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle")
        NyoModulesGlobalFunctions.DB.async.prepare("creative/set_update_vehicles","UPDATE vrp_user_vehicles SET engine = @engine, body = @body, fuel = @fuel WHERE user_id = @user_id AND vehicle = @vehicle")
        NyoModulesGlobalFunctions.DB.async.prepare("creative/set_detido","UPDATE vrp_user_vehicles SET detido = @detido, time = @time WHERE user_id = @user_id AND vehicle = @vehicle")
        NyoModulesGlobalFunctions.DB.async.prepare("creative/set_ipva","UPDATE vrp_user_vehicles SET ipva = @ipva WHERE user_id = @user_id AND vehicle = @vehicle")
        NyoModulesGlobalFunctions.DB.async.prepare("creative/move_vehicle","UPDATE vrp_user_vehicles SET user_id = @nuser_id WHERE user_id = @user_id AND vehicle = @vehicle")
        NyoModulesGlobalFunctions.DB.async.prepare("creative/add_vehicle","INSERT IGNORE INTO vrp_user_vehicles(user_id,vehicle,ipva) VALUES(@user_id,@vehicle,@ipva)")
        NyoModulesGlobalFunctions.DB.async.prepare("creative/con_maxvehs","SELECT COUNT(vehicle) as qtd FROM vrp_user_vehicles WHERE user_id = @user_id")
        NyoModulesGlobalFunctions.DB.async.prepare("creative/rem_srv_data","DELETE FROM vrp_srv_data WHERE dkey = @dkey")
        NyoModulesGlobalFunctions.DB.async.prepare("creative/get_estoque","SELECT * FROM vrp_estoque WHERE vehicle = @vehicle")
        NyoModulesGlobalFunctions.DB.async.prepare("creative/set_estoque","UPDATE vrp_estoque SET quantidade = @quantidade WHERE vehicle = @vehicle")
        NyoModulesGlobalFunctions.DB.async.prepare("creative/get_users","SELECT * FROM vrp_users WHERE id = @user_id")
        NyoModulesGlobalFunctions.DB.async.prepare("losanjos/get_vehicle","SELECT * FROM vrp_user_vehicles WHERE user_id = @user_id")
        NyoModulesGlobalFunctions.DB.async.prepare("losanjos/rem_vehicle","DELETE FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle")
        NyoModulesGlobalFunctions.DB.async.prepare("losanjos/get_vehicles","SELECT * FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle")
        NyoModulesGlobalFunctions.DB.async.prepare("losanjos/set_update_vehicles","UPDATE vrp_user_vehicles SET engine = @engine, body = @body, fuel = @fuel WHERE user_id = @user_id AND vehicle = @vehicle")
        NyoModulesGlobalFunctions.DB.async.prepare("losanjos/set_detido","UPDATE vrp_user_vehicles SET detido = @detido, time = @time WHERE user_id = @user_id AND vehicle = @vehicle")
        NyoModulesGlobalFunctions.DB.async.prepare("losanjos/set_ipva","UPDATE vrp_user_vehicles SET ipva = @ipva WHERE user_id = @user_id AND vehicle = @vehicle")
        NyoModulesGlobalFunctions.DB.async.prepare("losanjos/move_vehicle","UPDATE vrp_user_vehicles SET user_id = @nuser_id WHERE user_id = @user_id AND vehicle = @vehicle")
        NyoModulesGlobalFunctions.DB.async.prepare("losanjos/add_vehicle","INSERT IGNORE INTO vrp_user_vehicles(user_id,vehicle,ipva) VALUES(@user_id,@vehicle,@ipva)")
        NyoModulesGlobalFunctions.DB.async.prepare("losanjos/con_maxvehs","SELECT COUNT(vehicle) as qtd FROM vrp_user_vehicles WHERE user_id = @user_id")
        NyoModulesGlobalFunctions.DB.async.prepare("losanjos/rem_srv_data","DELETE FROM vrp_srv_data WHERE dkey = @dkey")
        NyoModulesGlobalFunctions.DB.async.prepare("losanjos/get_estoque","SELECT * FROM vrp_estoque WHERE vehicle = @vehicle")
        NyoModulesGlobalFunctions.DB.async.prepare("losanjos/set_estoque","UPDATE vrp_estoque SET quantidade = @quantidade WHERE vehicle = @vehicle")
        NyoModulesGlobalFunctions.DB.async.prepare("losanjos/get_users","SELECT * FROM vrp_users WHERE id = @user_id")

        NyoModulesGlobalFunctions.DB.async.prepare("nyo_modules/num_vehicles", "SELECT COUNT(*) as num_vehs FROM vrp_user_vehicles WHERE user_id = @user_id")
        NyoModulesGlobalFunctions.DB.async.prepare("nyo_module/check_home_garage_permission", "SELECT owner FROM vrp_homes_permissions WHERE user_id = @user_id AND home = @home")
    end)
    
    
    return {
        checkHomeGarage = function(user_id,home_name)
            local rows = vRP.query("nyo_module/check_home_garage_permission", { user_id = user_id, home = home_name })
            return rows[1] and true or false
        end,
        vehicleGlobal = vRP.vehicleGlobal,
        getVehiclePrice = vRP.vehiclePrice,
        getVehicleName = vRP.vehicleName,
        getPlateToSetOnVehicle = function(user_id, vehicleName, work)
            return vRP.getUserIdentity(user_id).registration
        end,
        checkCanBuyVehicle = function(user_id, owner_id, vehicle, price)
            local vagas = 3
            local permissions = {
                {"admin.permissao", 2}
            }
            for k,v in pairs(permissions) do
                if vRP.hasPermission(user_id, v[1]) then
                    vagas += v[2]
                end
            end
            local rows = NyoModulesGlobalFunctions.DB.sync.query('nyo_modules/num_vehicles', { user_id = user_id })
            return rows[1].num_vehs < vagas
        end,
        checkCanSellVehicle = function(user_id, vehicleName)
            return vRP.vehicleType(vehicleName) ~= 'vip'
        end,
        checkCanSpawnVehicle = function(user_id, vehicleName)
            return true
        end
    }

end)