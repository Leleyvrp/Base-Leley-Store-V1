NyoModules.registerFunctions('vrpex',function()

    local lang = NyoModules.getModuleLanguage()


    return {
        onUiOpen = function(config)
        end,
        onUiClose = function(config)
        end,
        onRouteStart = function(currentConfigIndex, currentRouteCategory, currentRouteIndex)
            NyoModulesGlobalFunctions.notify('green', 'Sucesso', lang.onRouteStart, 5000)
        end,
        onRouteStop = function()
            NyoModulesGlobalFunctions.notify('green', 'Sucesso', lang.onRouteStop, 5000)
        end,
        onSuccessToCollectItem = function(config, itens)
            local function replaceTable(str, table)
                return str:gsub("$name", table.name):gsub("$amount", table.amount)
            end
            for k,v in pairs(itens) do
                NyoModulesGlobalFunctions.notify('Sucesso', replaceTable(lang.onSuccessToCollectItem, v), "green", 5000)  
            end
        end,
        onFailToCollectItem = function(reason, config)
            NyoModulesGlobalFunctions.notify('Erro', lang[reason], "#FF0000", 5000)
        end,
    }

end)