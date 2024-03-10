NyoModules.registerNyoModule('nyo_crafting', function()
    local module_funcs = NyoModules.getModuleFunctions()

    for k,v in pairs(NyoModulesConfigs) do
        if v.type == 'nyo_crafting' then
            for l,w in pairs(v.craftingConfig) do
                for x,y in pairs(w.itens) do
                    NyoModulesConfigs[k].craftingConfig[l].itens[x].name = NyoModulesGlobalFunctions.itemName(x)
                    for a,b in pairs(y.requiredItens) do
                        NyoModulesConfigs[k].craftingConfig[l].itens[x].requiredItens[a] = {NyoModulesGlobalFunctions.itemName(a), b}
                    end
                end
            end
        end
    end
    
    NyoModulesClient.registerInterface(1)

    local currentInventory
    local currentConfig
    local currentConfigIndex
    local producing
    local safeConfig
    local category

    NyoModulesClient.registerKeyPress(function(v, k)
        currentInventory = RPC.trigger('crafting-getInventory')
        currentConfig = NyoModulesConfigs[v.config]
        currentConfigIndex = v.config

        safeConfig = table.clone(currentConfig.craftingConfig)
        for k,v in pairs(safeConfig) do
            safeConfig[k].executeAnimation = nil
            safeConfig[k].stopAnimation = nil
        end
        module_funcs.onUiOpen(currentConfig, currentInventory)
        NyoModulesClient.openUI({
            inventory = currentInventory,
            config = safeConfig
        })
        NyoModulesClient.disableMarkerType(1)
        SetNuiFocus(true, true)
    end)

    NyoModulesClient.registerNUICallback('close', function()
        module_funcs.onUiClose(currentConfig, currentInventory, producing)
        SetNuiFocus(false, false)
        if not producing then
            NyoModulesClient.enableMarkerType(1)
        end
    end)

    AddEventHandler("nxgroup_connection:close",function(data)
        module_funcs.onUiClose(currentConfig, currentInventory, producing)
        SetNuiFocus(false, false)
        if not producing then
            NyoModulesClient.enableMarkerType(1)
        end
    end)

    NyoModulesClient.registerNUICallback('produceItens', function(data,cb)
        if producing then
            return
        end
        local ableToCraft, failReason = RPC.trigger('crafting-produceItens', currentConfigIndex, data)
        cb({ableToCraft = ableToCraft})
        if ableToCraft then
            module_funcs.onSuccessToProduceItens(NyoModulesConfigs[currentConfigIndex], data)
            FreezeEntityPosition(plyPed, true)
            producing = true
            NyoModulesClient.closeUI()
            category = data.category
            currentConfig.craftingConfig[data.category].executeAnimation()
            module_funcs.onFinishingProducingItens(NyoModulesConfigs[currentConfigIndex], data)
        else
            module_funcs.onFailToProduceItens(failReason, NyoModulesConfigs[currentConfigIndex], data)
        end
    end)

    SafeEvents.register('crafting-updateInventory', function(data)
        currentInventory = data
        module_funcs.onInventoryUpdate(currentConfig, currentInventory)
        NyoModulesClient.openUI({
            inventory = currentInventory,
            config = safeConfig
        })
        SetNuiFocus(true, true)
        producing = false
        FreezeEntityPosition(plyPed, false)
        currentConfig.craftingConfig[category].stopAnimation()
    end)

end)