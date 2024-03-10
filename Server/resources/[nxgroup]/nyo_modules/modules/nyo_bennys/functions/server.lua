NyoModules.registerFunctions('vrpex',{
    getVehicleOwnerByPlayer = vRP.getUserByRegistration,
    getVehicleModelName = function(netid, veh)
        return vRP.vehicleModel(GetEntityModel(veh))
    end
})