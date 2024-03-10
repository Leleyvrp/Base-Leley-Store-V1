NyoModules.registerFunctions('vrpex', function()
    return {
        getUserMoney = function(user_id, type)
            if type == 1 then
                return vRP.getMoney(user_id)
            elseif type == 2 then
                return vRP.getBankMoney(user_id) + vRP.getMoney(user_id)
            end
        end
    }
end)