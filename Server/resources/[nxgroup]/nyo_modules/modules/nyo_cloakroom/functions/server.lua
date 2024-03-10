NyoModules.registerFunctions('vrpex',{
    getCloakCloth = function(user_id)
        local dt = vRP.getUData(user_id,"nyo:cloakRoom")
        local ret = {}
        local retBool = false
        if dt ~= "" then 
            retBool = true
            ret = json.decode(dt)
        end
        return retBool, ret
    end,
    
    setCloakCloth = function(user_id, data)
        vRP.setUData(user_id,"nyo:cloakRoom",data)
    end
})