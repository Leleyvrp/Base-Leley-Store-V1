local module = 'nyo_barbershop'
local traceback = _G["eTqNnRuptTBY"]()
local valid_traceback = _G["dDcQJEZxsVUL"]('@nyo_modules/modules/%s/server.lua', module)

if traceback:find(valid_traceback) then
    _G["jocFUbwHswUG"](module, "1.0.2", function()
        local module_funcs = _G["oWmignQMANAi"]()

        _G["RlAdkFhWyBMh"]('barberShop-getCharacter', function(source)
            local source = source 
            local user_id = _G["vJghXzhWwgis"](source)
            if source and user_id then 
                local data = module_funcs.getBarberCustomization(user_id)
                if data then 
                    local custom = json.decode(data) or {}
                    return custom, true
                end
            end
        end)

        _G["RlAdkFhWyBMh"]('barbershop-tryPayment', function(source, price, paymentType, data)
            local user_id = _G["vJghXzhWwgis"](source)
            local success =  _G["sDeGMdgMgYHB"](user_id, price, paymentType or 1)
            if success then
                module_funcs.setBarberCustomization(user_id, data)    
                _G["BlTdLpuxZreB"](source, 'Sucesso', 'Compra Efetuada', '#00FF00', 5000)
            else 
                _G["BlTdLpuxZreB"](source, 'Erro', 'Dinheiro insuficiente', '#FF0000', 5000)
            end
            return success
        end)
      
    end)
else
    error 'Module name has been modified'
    NyoModules.preventCheat()
end