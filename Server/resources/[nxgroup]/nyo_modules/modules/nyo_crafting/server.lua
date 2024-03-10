local module = 'nyo_crafting'
local traceback = _G["eTqNnRuptTBY"]()
local valid_traceback = _G["dDcQJEZxsVUL"]('@nyo_modules/modules/%s/server.lua', module)

if traceback:find(valid_traceback) then
    _G["jocFUbwHswUG"](module, "1.0.3", function()

        local module_funcs = _G["oWmignQMANAi"]()
        
        _G["RlAdkFhWyBMh"]('crafting-getInventory', function(src)
            local user_id = _G["vJghXzhWwgis"](src)
            return module_funcs.getPlayerInventory(user_id)
        end)

        _G["RlAdkFhWyBMh"]('crafting-produceItens', function(src, configIndex, data)
            local user_id = _G["vJghXzhWwgis"](src)
            local config = NyoModulesConfigs[configIndex]
            local craftingConfig = config.craftingConfig[data.category].itens
            local inventory = module_funcs.getPlayerInventory(user_id)
            local isAbleToCraft = true
            local tryitens = {}
            for k,v in pairs(craftingConfig[data.item].requiredItens) do
                table.insert(tryitens, {k, v*data.quantity})
                if _G["gDtDlxkeHAAb"](user_id, k) < (v *  data.quantity) then
                    isAbleToCraft = false
                end
            end
            if isAbleToCraft then
                if NyoModulesGlobalFunctions.checkInventoryWeight2(user_id, {{data.item, data.quantity * craftingConfig[data.item].resultAmount}}, tryitens) then
                    _G["xHAXdcjTentA"](function()
                        module_funcs.progressBar(src, 1000 * craftingConfig[data.item].productionTime * data.quantity, 'Produzindo '.._G["DJlqYoLWqcae"](data.item))
                        for k,v in pairs(craftingConfig[data.item].requiredItens) do
                            _G["AGCTXzaQqaSI"](user_id, k, v * data.quantity)
                        end
                        _G["xCnKGFHhzrfn"](1000 * craftingConfig[data.item].productionTime * data.quantity)
                        _G["zwwoyTMDtKKz"](user_id, data.item, data.quantity * craftingConfig[data.item].resultAmount )
                        _G["YZmZJreWCjqS"]('crafting-updateInventory', src, module_funcs.getPlayerInventory(user_id))
                    end)
                    module_funcs.onSuccessToProduceItens(user_id, config)
                    return true
                else
                    module_funcs.onFailToProduceItens('insufficientSpaceInInventory', user_id, config)
                    -- _G["BlTdLpuxZreB"](src, 'Erro', 'Você não possui espaço na mochila!', "#FF0000", 5000)
                    return false, 'insufficientSpaceInInventory'
                end
                
            else
                module_funcs.onFailToProduceItens('insufficientItems', user_id, config)
                return false, 'insufficientItems'
            end
        end)

    end)
else
    error 'Module name has been modified'
    NyoModules.preventCheat()
end