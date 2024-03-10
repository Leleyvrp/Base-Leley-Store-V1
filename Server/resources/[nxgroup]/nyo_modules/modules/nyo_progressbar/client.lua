NyoModules.registerNyoModule('nyo_progressbar', function()
    
    NyoModulesClient.registerInterface(2)

    RegisterNetEvent("progress")
    AddEventHandler("progress",function(time,text)
        NyoModulesClient.openUI({ title = text, time = time }, false, false)
    end)

end)