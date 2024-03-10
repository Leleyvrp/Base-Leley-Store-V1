local module = 'nyo_skinshop'
local traceback = _G["eTqNnRuptTBY"]()
local valid_traceback = _G["dDcQJEZxsVUL"]('@nyo_modules/modules/%s/server.lua', module)

if traceback:find(valid_traceback) then
    _G["jocFUbwHswUG"](module, "1.0.4", function()
        
        _G["RlAdkFhWyBMh"]('skinshop-tryPayment', function(source, price, paymentType, data)
            local user_id = _G["vJghXzhWwgis"](source)
            local success =  _G["sDeGMdgMgYHB"](user_id, price, paymentType or 1)

            if success and _G["gbCCwTlclPUY"]('nyo_guardaroupa') then                
                _G["PkIaDbkumtyi"]("nyoModule:SaveWardrobe", user_id, data)
            end

            if success then
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