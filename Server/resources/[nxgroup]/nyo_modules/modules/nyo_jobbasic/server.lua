local module = 'nyo_jobbasic'
local traceback = _G["eTqNnRuptTBY"]()
local valid_traceback = _G["dDcQJEZxsVUL"]('@nyo_modules/modules/%s/server.lua', module)

if traceback:find(valid_traceback) then
    _G["jocFUbwHswUG"](module, "1.0.1", function()
        local activedUsers = {}

        _G["RlAdkFhWyBMh"]('jobbasic-payment', function(source, emp)
            local user_id = _G["vJghXzhWwgis"](source)
            if activedUsers[user_id] == nil then 
                activedUsers[user_id] = true
                cfgJob = NyoModulesConfigs.jobBasicGeneralConfig[emp..'Config']
    
                if cfgJob.paymentType.money then 
                    local jobMoney = math.random(cfgJob.minMoney, cfgJob.maxMoney)
                    -- aqui efetua o pagamento com dinheiro
                    _G["EEdrKGjmWadC"](user_id, jobMoney)
                end
        
                if cfgJob.paymentType.itens then 
                    local jobItemType = cfgJob.paymentItensType
                    if jobItemType == 1 then 
                        for k,v in pairs(cfgJob.paymentItens) do 
                            local jobItem = v.item
                            local jobItemRand = math.random(v.min, v.max)
                            -- da o item
                            if _G["bSaGraBxGFIt"](user_id, jobItem, jobItemRand) then
                                _G["zwwoyTMDtKKz"](user_id, jobItem, jobItemRand)
                            else 
                                _G["BlTdLpuxZreB"](source, 'Erro', 'Você não possui espaço na mochila!', "#FF0000", 5000)
                            end
                        end
                    elseif jobItemType == 2 then 
                        local jobItemSort = math.random(#cfgJob.paymentItens)
                        local jobSendItem = cfgJob.paymentItens[jobItemSort].item 
                        local jobSendQtd = math.random(cfgJob.paymentItens[jobItemSort].min, cfgJob.paymentItens[jobItemSort].max)
                        -- da o item
                        if _G["bSaGraBxGFIt"](user_id, jobSendItem, jobSendQtd) then
                            _G["zwwoyTMDtKKz"](user_id, jobSendItem, jobSendQtd)
                        else 
                            _G["BlTdLpuxZreB"](source, 'Erro', 'Você não possui espaço na mochila!', "#FF0000", 5000)
                        end
                    end
                end 

                activedUsers[user_id] = nil
            end
        end)

        _G["RlAdkFhWyBMh"]('jobbasic-getItem', function(source, item, qtd)
            local user_id = _G["vJghXzhWwgis"](source)
            return _G["WXCcHEIAcFnx"](user_id, item, qtd)
        end)
    end)
else
    error 'Module name has been modified'
    NyoModules.preventCheat()
end