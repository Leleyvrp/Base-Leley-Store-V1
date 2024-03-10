local module = 'nyo_cloakroom'
local traceback = _G["eTqNnRuptTBY"]()
local valid_traceback = _G["dDcQJEZxsVUL"]('@nyo_modules/modules/%s/server.lua', module)

if traceback:find(valid_traceback) then
    _G["jocFUbwHswUG"](module, "1.0.1", function()
        local module_funcs = _G["oWmignQMANAi"]()

        _G["RlAdkFhWyBMh"]('cloakroom-changeCloakClothe', function(source, id, configIndex, sexo, atualCustom)
            local config = NyoModulesConfigs[configIndex].cloakConfig
            local user_id = _G["vJghXzhWwgis"](source)
            if id then 
                if id == -1 then 
                    local status, gCloakCloth = module_funcs.getCloakCloth(user_id)

                    if status then                                    
                        module_funcs.setCloakCloth(user_id, "")
                        return gCloakCloth
                    end
                else 
                    local crConfig = config.pressets
                    if crConfig then 
                        local crConfig2 = crConfig[sexo][id+1]  
                        local changeCloth = _G["phABSDhiumpu"](user_id, crConfig2.perm)
                        
                        if changeCloth then 
                            local status, gCloakCloth = module_funcs.getCloakCloth(user_id)
                            if status then 
                                return crConfig2.clothe
                            else 
                                atualCustom[2] = nil
                                module_funcs.setCloakCloth(user_id, json.encode(atualCustom))
                                return crConfig2.clothe
                            end
                        else 
                            _G["BlTdLpuxZreB"](source, 'Erro', 'Você não possui permissão de utilizar esta roupa.', "#FF0000", 5000)
                        end
                       
                    end
                end
            end
        end)

    end)
else
    error 'Module name has been modified'
    NyoModules.preventCheat()
end