local module = 'nyo_tattooshop'
local traceback = _G["eTqNnRuptTBY"]()
local valid_traceback = _G["dDcQJEZxsVUL"]('@nyo_modules/modules/%s/server.lua', module)

if traceback:find(valid_traceback) then
    _G["jocFUbwHswUG"](module, "1.0.2", function()

        local module_funcs = _G["oWmignQMANAi"]()

        _G["RlAdkFhWyBMh"]('tattooshop-getTattoos', function(source)
            local user_id = vRP.getUserId(source)
            if user_id then                 
                local custom = {}
                local data = module_funcs.tattooShopGetData(user_id)
                local custom = json.decode(data) or {}
                return custom
            end
        end)

        _G["RlAdkFhWyBMh"]('tattooshop-tryPayment', function(source, price, paymentType, data)
            local user_id = vRP.getUserId(source)
            local success =  _G["sDeGMdgMgYHB"](user_id, price, paymentType or 1)
            if success then
                module_funcs.tattooShopSetData(user_id, data)
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