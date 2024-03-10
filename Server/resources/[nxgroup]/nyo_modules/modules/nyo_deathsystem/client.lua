NyoModules.registerNyoModule('nyo_deathsystem', function()
    local deathConfig = NyoModulesConfigs['configDeathSystem']
    NyoModulesClient.registerInterface(1)

    NyoModules.onReady(function()
        if NyoModules.isModuleActive('nyo_spawn') then 

        else         
            exports.spawnmanager:setAutoSpawn(false)
        end
    end)    

    CreateThread(function()
        Wait(10000)
        local ped = plyPed

        if GetEntityHealth(ped) < 101 then 
            TriggerScreenblurFadeIn(0)
            if deathConfig.deathZoomCam then SetCamEffect(1) end
            if deathConfig.deathGrayCam then AnimpostfxPlay('DeathFailOut', 0, true) end  
            SetNuiFocus(true, true)
            NyoModulesClient.openUI({config = deathConfig})
        else 
            TriggerScreenblurFadeOut(0)
            AnimpostfxStop('DeathFailOut')
            SetCamEffect(0)
        end
    end)

    AddEventHandler('gameEventTriggered', function (name, args)
        if name == 'CEventNetworkEntityDamage'  then
            local ped = plyPed
            if args[1] == ped and args[6] == 1 then 
                TriggerScreenblurFadeIn(0)
                if deathConfig.deathZoomCam then SetCamEffect(1) end
                if deathConfig.deathGrayCam then AnimpostfxPlay('DeathFailOut', 0, true) end                              
                SetNuiFocus(true, true)
                NyoModulesClient.openUI({config = deathConfig})
            end
        end
    end)   

    RegisterCommand('revivert', function(source, args)
        TriggerEvent("nyo_module:Revive")
    end)

    RegisterNetEvent("nyo_modules:Revive")
    AddEventHandler("nyo_module:Revive", function()
        local ped = plyPed
        SetNuiFocus(false, false)
        TriggerScreenblurFadeOut(0)
        SetCamEffect(0)
        AnimpostfxStop('DeathFailOut')
        NyoModulesClient.closeUI()
    end)

    NyoModulesClient.registerNUICallback("deathsystem:revive", function(data, cb)
        local ped = plyPed
        if data.time <= 0 then 
            local rtn, type = RPC.trigger("deathsystem:checkRevive")
            if rtn then 
                local pedCoord = GetEntityCoords(ped)
                TriggerEvent("resetBleeding")
                TriggerEvent("resetDiagnostic") 
                TriggerScreenblurFadeOut(0)
                SetCamEffect(0)
                AnimpostfxStop('DeathFailOut')
                SetNuiFocus(false,false)
                NyoModulesClient.closeUI()
                ClearPedBloodDamage(ped)
                SetEntityHealth(ped,400)
                SetPedArmour(ped,0)
                NetworkResurrectLocalPlayer(pedCoord,true,true,false)
            else 
                cb(false)
                if type == 1 then                     
                    -- print('retornou aqui2')
                elseif type == 2 then                    
                    -- print('retornou aqui')
                end
            end
        end
    end)

    NyoModulesClient.registerNUICallback("deathsystem:giveUp", function(data, cb)
        local ped = plyPed
        if data.time <= 0 then 
            if RPC.trigger("deathsystem:ClearInventory") then 
                TriggerEvent("resetBleeding")
                TriggerEvent("resetDiagnostic")                
                DoScreenFadeOut(1000)
                TriggerScreenblurFadeOut(0)
                SetCamEffect(0)
                AnimpostfxStop('DeathFailOut')
                SetNuiFocus(false,false)
                NyoModulesClient.closeUI()
                ClearPedBloodDamage(ped)
                SetEntityHealth(ped,400)
                SetPedArmour(ped,0)
                Wait(1000)
               -- SetEntityCoords(ped,deathConfig.giveUpCoord.x+0.0001,deathConfig.giveUpCoord.y+0.0001,deathConfig.giveUpCoord.z+0.0001,1,0,0,1)
                NetworkResurrectLocalPlayer(deathConfig.giveUpCoord,true,true,false)
                FreezeEntityPosition(ped,true)
                SetTimeout(5000,function()
                    FreezeEntityPosition(ped,false)
                    Wait(1000)
                    DoScreenFadeIn(1000)
                end)
            end
        end
    end)
end)