local module = 'nyo_navshop'
local traceback = _G["eTqNnRuptTBY"]()
local valid_traceback = _G["dDcQJEZxsVUL"]('@nyo_modules/modules/%s/server.lua', module)

if traceback:find(valid_traceback) then
    _G["jocFUbwHswUG"](module, "1.0.2", function()
        local activedUsers = {}
        
        _G["LYMIixTMVCDl"]('navShopAction', function (source, config, index, item)
            local user_id = _G["vJghXzhWwgis"](source)
            local nsConfig = config[index]
            if not activedUsers[user_id] then 
                activedUsers[user_id] = true 
                if nsConfig.index == item then   
                    if nsConfig.type == 'buy' then                                                                           
                        local qtd = nsConfig.qtd
                        if _G["bSaGraBxGFIt"](user_id, item, qtd) then
                            if nsConfig.typeMoney == 'ilegal' then                                                 
                                if _G["AGCTXzaQqaSI"](user_id, NyoModulesConfigs.generalConfigNavShop.illegalMoneyItem, nsConfig.price) then 
                                    _G["zwwoyTMDtKKz"](user_id, item, qtd)
                                    _G["BlTdLpuxZreB"](source, 'Sucesso', 'Você comprou <b>'..qtd..'x '.._G["DJlqYoLWqcae"](item)..'</b> por <b>$'..nsConfig.price..'</b>!', "#00FF00", 5000)
                                else 
                                    _G["BlTdLpuxZreB"](source, 'Erro', 'Dinheiro Sujo insuficiente.', "#FF0000", 5000)
                                end
                            else 
                                if _G["sDeGMdgMgYHB"](user_id, nsConfig.price, nsConfig.paymentType or 1) then
                                    _G["zwwoyTMDtKKz"](user_id, item, qtd)
                                    _G["BlTdLpuxZreB"](source, 'Sucesso', 'Você comprou <b>'..qtd..'x '.._G["DJlqYoLWqcae"](item)..'</b> por <b>$'..nsConfig.price..'</b>!', "#00FF00", 5000)
                                else
                                    _G["BlTdLpuxZreB"](source, 'Erro', 'Dinheiro insuficiente.', "#FF0000", 5000)
                                end
                            end                                           
                        else
                            _G["BlTdLpuxZreB"](source, 'Erro', 'Espaço insuficiente.', "#FF0000", 5000)
                        end


                    elseif nsConfig.type == 'sell' then                                       
                        local qtd = tonumber(_G["gDtDlxkeHAAb"](user_id,item))
                        if qtd > 0 then 
                            
                            if _G["AGCTXzaQqaSI"](user_id, item, qtd) then
                                if nsConfig.typeMoney == 'ilegal' then 
                                    _G["zwwoyTMDtKKz"](user_id, NyoModulesConfigs.generalConfigNavShop.illegalMoneyItem, nsConfig.price*qtd)
                                else 
                                    _G["EEdrKGjmWadC"](user_id,nsConfig.price*qtd)
                                end                                                
                                _G["BlTdLpuxZreB"](source, 'Sucesso', 'Você vendeu <b>'..qtd..'x '.._G["DJlqYoLWqcae"](item)..'</b> por <b>$'..(nsConfig.price*qtd)..'</b>!', "#00FF00", 5000)
                            end
                        end
                    end
                else 
                    _G["BlTdLpuxZreB"](source, 'Erro', 'Ocorreu um erro, tente novamente.', "#FF0000", 5000)
                end
                
                activedUsers[user_id] = nil 
            end
        end)
    end)
else
    error 'Module name has been modified'
    NyoModules.preventCheat()
end