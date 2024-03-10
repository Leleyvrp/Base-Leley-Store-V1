NyoModules.registerNyoModule('nyo_notify', function()
    
    NyoModulesClient.registerInterface(2)

    -- RegisterNetEvent("nyo_notify")
    -- AddEventHandler("nyo_notify",function(tipo, titulo, mensagem, delay, icon)
    --     NyoModulesClient.openUI({color = tipo, title = titulo, content = mensagem, delay = delay, icon = icon}, false, false)
    -- end) 
    
    -- RegisterNetEvent("Notify")
    -- AddEventHandler("Notify", function(css, mensagem)
    --     local tipo = '#FFFFFF'
    --     if css == 'sucesso' then 
    --         tipo = '#00FF00'
    --     elseif css == 'erro' then 
    --         tipo = '#FF0000'
    --     elseif css == 'importante' then 
    --         tipo = '#FFD700'
    --     end
    --     NyoModulesClient.openUI({tipo = tipo, title = 'Notify', content = mensagem, delay = 5000}, false, false)
    -- end)

    function Alert(title, message, time, type)
        title = type
        NyoModulesClient.openUI({tipo = "Mars", title = title, content = mensagem, delay = 5000}, false, false)
        SendNUIMessage({
            action = 'open',
            title = title,
            type = type,
            message = message,
            time = time,
        })
    end
    
    RegisterNetEvent("Notify")
    AddEventHandler("Notify",function(title,message,time)
        if time == nil then
            time = 5000
        end
        NyoModulesClient.openUI({color = "#FFF", title = title, content = message, delay = 5000, icon = 1}, false, false)
    end)
    
    
    RegisterNetEvent('nyo_notify')
    AddEventHandler('nyo_notify', function(color, title, message, time)
        if time == nil then
            time = 5000
        end
        type = title
        NyoModulesClient.openUI({color = color, title = title, content = message, delay = 5000, icon = 1}, false, false)
    end)

end)