NyoModules.registerNyoModule('nyo_anim', function()
    local animConfig = NyoModulesConfigs['configAnim']

    for k,v in pairs(animConfig.generalConfig.keyMapping) do 
        RegisterCommand('+'..k, function() v.action() end) 
        RegisterKeyMapping('+'..k, v.text, v.keyLocate, v.key)
    end

    local apontarstart = false
    function functionApontar(state) 
        apontarstart = state
        CreateThread(function()
            while apontarstart do
                Wait(1)
                local ped = PlayerPedId()
                local camPitch = GetGameplayCamRelativePitch()
                if camPitch < -70.0 then
                    camPitch = -70.0
                elseif camPitch > 42.0 then
                    camPitch = 42.0
                end
                camPitch = (camPitch + 70.0) / 112.0
    
                local camHeading = GetGameplayCamRelativeHeading()
                local cosCamHeading = Cos(camHeading)
                local sinCamHeading = Sin(camHeading)
                if camHeading < -180.0 then
                    camHeading = -180.0
                elseif camHeading > 180.0 then
                    camHeading = 180.0
                end
                camHeading = (camHeading + 180.0) / 360.0
    
                local blocked = 0
                local nn = 0
                local coords = GetOffsetFromEntityInWorldCoords(ped,(cosCamHeading*-0.2)-(sinCamHeading*(0.4*camHeading+0.3)),(sinCamHeading*-0.2)+(cosCamHeading*(0.4*camHeading+0.3)),0.6)
                local ray = Cast_3dRayPointToPoint(coords.x,coords.y,coords.z-0.2,coords.x,coords.y,coords.z+0.2,0.4,95,ped,7);
                nn,blocked,coords,coords = GetRaycastResult(ray)
    
                Citizen.InvokeNative(0xD5BB4025AE449A4E,ped,"Pitch",camPitch)
                Citizen.InvokeNative(0xD5BB4025AE449A4E,ped,"Heading",camHeading*-1.0+1.0)
                Citizen.InvokeNative(0xB0A6CFD2C69C1088,ped,"isBlocked",blocked)
                Citizen.InvokeNative(0xB0A6CFD2C69C1088,ped,"isFirstPerson",Citizen.InvokeNative(0xEE778F8C7E1142E2,Citizen.InvokeNative(0x19CAFA3C87F7C2FF))==4)
            end
        end)
    end

    SafeEvents.register('anim-setWalking', function(dict)
        console.debug('^3[ ANIMATION ] ^7Set player walk animation '..dict)
        RequestAnimSet(dict)
        while not HasAnimSetLoaded(dict) do
            Wait(10)
        end
        SetPedMovementClipset(PlayerPedId(),dict,0.25)
    end)

    SafeEvents.register('anim-setExpression', function(anim)
        console.debug('^3[ ANIMATION ] ^7Set player facial expression '..anim)
        SetFacialIdleAnimOverride(PlayerPedId(), anim)
    end)

    RPC.addHandler("anim-getPlayer", function()
        local ped, player = GetClosestPlayerFromPlayer(2.0)
        return GetPlayerServerId(player)
    end)

    SafeEvents.register('anim-setAnimShared', function(anim)
        console.debug('^3[ ANIMATION ] ^7Set shared anim '..anim)
        local ped = PlayerPedId()
        local emote = animConfig.animComp[anim]
        if emote.pos then
            local emoteDict = emote.dict or nil
            local emoteAnim = emote.anim or nil
            if emoteDict then 
                vRP._playAnim(emote.andar,{{emote.dict,emote.anim}},emote.loop)
            end
            vRP.CarregarObjeto("","",emote.prop,emote.flag,emote.hand,emote.pos[1],emote.pos[2],emote.pos[3],emote.pos[4],emote.pos[5],emote.pos[6])
        elseif emote.prop then
            vRP.CarregarObjeto(emote.dict,emote.anim,emote.prop,emote.flag,emote.hand)
        elseif emote.dict then
            vRP._playAnim(emote.andar,{{emote.dict,emote.anim}},emote.loop)
        else
            vRP._playAnim(false,{task=emote.anim},false)
        end
    end)

    SafeEvents.register('anim-setAnimShared2', function(anim, source)
        console.debug('^3[ ANIMATION ] ^7Set shared anim2 '..anim)
        local ped = GetPlayerPed(GetPlayerFromServerId(source))
        local heading = GetEntityHeading(ped)
        local coords = GetOffsetFromEntityInWorldCoords(ped, 0.0, 1.0, 0.0)
        local emote = animConfig.animComp[anim]
        if (emote) and (emote.syncOption) then
          local SyncOffsetFront = emote.syncOption.SyncOffsetFront
          if SyncOffsetFront then
              coords = GetOffsetFromEntityInWorldCoords(ped, 0.0, SyncOffsetFront, 0.0)
          end
        end
        SetEntityHeading(PlayerPedId(), heading - 180.1)
        SetEntityCoordsNoOffset(PlayerPedId(), coords.x, coords.y, coords.z, 0)
        Wait(300)
        if emote.extra then emote.extra() end
            if emote.pos then
                local emoteDict = emote.dict or nil
                local emoteAnim = emote.anim or nil
                if emoteDict then 
                    vRP._playAnim(emote.andar,{{emote.dict,emote.anim}},emote.loop)
                end
                vRP.CarregarObjeto("","",emote.prop,emote.flag,emote.hand,emote.pos[1],emote.pos[2],emote.pos[3],emote.pos[4],emote.pos[5],emote.pos[6])
            elseif emote.prop then
                vRP.CarregarObjeto(emote.dict,emote.anim,emote.prop,emote.flag,emote.hand)
            elseif emote.dict then
                vRP._playAnim(emote.andar,{{emote.dict,emote.anim}},emote.loop)
            else
                vRP._playAnim(false,{task=emote.anim},false)
            end
        
    end)

    SafeEvents.register('anim-setAnim', function(anim)
        console.debug('^3[ ANIMATION ] ^7Set anim '..anim)
        local ped = PlayerPedId()
        local emote = animConfig.anim[anim]
        if not IsPedInAnyVehicle(ped) and not emote.carros then       
            if emote.extra then emote.extra() end
            if emote.pos then
                local emoteDict = emote.dict or nil
                local emoteAnim = emote.anim or nil
                if emoteDict then 
                    vRP._playAnim(emote.andar,{{emote.dict,emote.anim}},emote.loop)
                end
                vRP.CarregarObjeto(emoteDict,emoteAnim,emote.prop,emote.flag,emote.hand,emote.pos[1],emote.pos[2],emote.pos[3],emote.pos[4],emote.pos[5],emote.pos[6])
            elseif emote.prop then
                vRP.CarregarObjeto(emote.dict,emote.anim,emote.prop,emote.flag,emote.hand)
            elseif emote.dict then
                vRP._playAnim(emote.andar,{{emote.dict,emote.anim}},emote.loop)
            else
                vRP._playAnim(false,{task=emote.anim},false)
            end
        else
            if IsPedInAnyVehicle(ped) and emote.carros then
            local vehicle = GetVehiclePedIsIn(ped,false)
                if (GetPedInVehicleSeat(vehicle,-1) == ped or GetPedInVehicleSeat(vehicle,1) == ped) and anim == "sexo4" then
                    vRP._playAnim(emote.andar,{{emote.dict,emote.anim}},emote.loop)
                elseif (GetPedInVehicleSeat(vehicle,0) == ped or GetPedInVehicleSeat(vehicle,2) == ped) and (anim == "sexo5" or anim == "sexo6") then
                    vRP._playAnim(emote.andar,{{emote.dict,emote.anim}},emote.loop)
                end
            end
        end
    end)

    local fov_min = 5.0
    local fov_max = 70.0
    local binoculos = false
    local camera = false
    local fov = (fov_max+fov_min)*0.5

    startBinoculos = function()        
        binoculos = true
        CreateThread(function()
            while binoculos do 
                local scaleform = RequestScaleformMovie("BINOCULARS")
                while not HasScaleformMovieLoaded(scaleform) do
                    Wait(10)
                end
    
                local cam = CreateCam("DEFAULT_SCRIPTED_FLY_CAMERA",true)
                AttachCamToEntity(cam,PlayerPedId(),0.0,0.0,1.0,true)
                SetCamRot(cam,0.0,0.0,GetEntityHeading(PlayerPedId()))
                SetCamFov(cam,fov)
                RenderScriptCams(true,false,0,1,0)
    
                while binoculos and true do
                    Wait(1)
                    BlockWeaponWheelThisFrame()
                    local zoomvalue = (1.0/(fov_max-fov_min))*(fov-fov_min)
                    CheckInputRotation(cam,zoomvalue)
                    HandleZoom(cam)
                    DrawScaleformMovieFullscreen(scaleform,255,255,255,255)
                end
    
                fov = (fov_max+fov_min)*0.5
                RenderScriptCams(false,false,0,1,0)
                SetScaleformMovieAsNoLongerNeeded(scaleform)
                DestroyCam(cam,false)
                SetNightvision(false)
                SetSeethrough(false)

                if IsControlJustPressed(0,38) then
                    if IsEntityPlayingAnim(PlayerPedId(),"missfinale_c2mcs_1","fin_c2_mcs_1_camman",3) then
                        camera = true
                    end
                    if camera then
                        local scaleform = RequestScaleformMovie("breaking_news")
                        local scaleform2 = RequestScaleformMovie("security_camera")
                        while not HasScaleformMovieLoaded(scaleform) do
                            Wait(10)
                        end
                        while not HasScaleformMovieLoaded(scaleform2) do
                            Wait(10)
                        end
         
                        local cam = CreateCam("DEFAULT_SCRIPTED_FLY_CAMERA",true)
                        AttachCamToEntity(cam,PlayerPedId(),0.0,0.0,1.0,true)
                        SetCamRot(cam,0.0,0.0,GetEntityHeading(PlayerPedId()))
                        SetCamFov(cam,fov)
                        RenderScriptCams(true,false,0,1,0)
         
                        while camera and true do
                            Wait(1)
                            BlockWeaponWheelThisFrame()
                            local zoomvalue = (1.0/(fov_max-fov_min))*(fov-fov_min)
                            CheckInputRotation(cam,zoomvalue)
                            HandleZoom(cam)
                            DrawScaleformMovieFullscreen(scaleform,255,255,255,255)
                            DrawScaleformMovieFullscreen(scaleform2,255,255,255,255)
                            --Breaking("DISNEYLANDIA NEWS")
                            if IsControlJustPressed(0,38) then
                                camera = false
                            end
                        end
         
                        fov = (fov_max+fov_min)*0.5
                        RenderScriptCams(false,false,0,1,0)
                        SetScaleformMovieAsNoLongerNeeded(scaleform)
                        SetScaleformMovieAsNoLongerNeeded(scaleform2)
                        DestroyCam(cam,false)
                        SetNightvision(false)
                        SetSeethrough(false)
                    end
                end

                Wait(1)
            end
        end)
    end

    RegisterNetEvent('binoculos')
    AddEventHandler('binoculos',function()
        if IsEntityPlayingAnim(PlayerPedId(),"amb@world_human_binoculars@male@enter","enter",3) then
            binoculos = true
            camera = true
        else
            binoculos = false
            camera = false
        end
    end)
    
    function CheckInputRotation(cam,zoomvalue)
        local rightAxisX = GetDisabledControlNormal(0,220)
        local rightAxisY = GetDisabledControlNormal(0,221)
        local rotation = GetCamRot(cam,2)
        if rightAxisX ~= 0.0 or rightAxisY ~= 0.0 then
            new_z = rotation.z+rightAxisX*-1.0*(8.0)*(zoomvalue+0.1)
            new_x = math.max(math.min(20.0,rotation.x+rightAxisY*-1.0*(8.0)*(zoomvalue+0.1)),-89.5)
            SetCamRot(cam,new_x,0.0,new_z,2)
        end
    end
    
    function HandleZoom(cam)
        if IsControlJustPressed(0,241) then
            fov = math.max(fov-10.0,fov_min)
        end
    
        if IsControlJustPressed(0,242) then
            fov = math.min(fov+10.0,fov_max)
        end
    
        local current_fov = GetCamFov(cam)
        if math.abs(fov-current_fov) < 0.1 then
            fov = current_fov
        end
        SetCamFov(cam,current_fov+(fov-current_fov)*0.05)
    end
    
    function Breaking(text)
        SetTextColour(255,255,255,255)
        SetTextFont(8)
        SetTextScale(1.2,1.2)
        SetTextWrap(0.0,1.0)
        SetTextCentre(false)
        SetTextDropshadow(0,0,0,0,255)
        SetTextEdge(1,0,0,0,205)
        SetTextEntry("STRING")
        AddTextComponentString(text)
        DrawText(0.2,0.85)
    end
    
end)