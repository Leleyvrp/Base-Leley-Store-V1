NyoModules.registerNyoModule('nyo_notifyitem', function()
    
    NyoModulesClient.registerInterface(2)

    RegisterNetEvent("nyo_notifyItem", function(item, itemName, qtd, cor, delay)
        NyoModulesClient.openUI({ item = item, itemName = itemName, qtd = qtd, cor = cor, delay = delay }, false, false)
    end)

end)