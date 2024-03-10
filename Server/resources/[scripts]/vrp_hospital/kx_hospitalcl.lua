local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
kx_EmpHP = Tunnel.getInterface("vrp_hospital")

local lit_1 = {
    {anim = "savecouch@",lib = "t_sleep_loop_couch",name = Config.Language.anim.lie_back, x = 0, y = 0, z = 0.7, r = 180.0},
	{anim = "amb@prop_human_seat_chair_food@male@base",lib = "base",name = Config.Language.anim.sit_right, x = 0.3, y = -0.2, z = 0.15, r = -90.0},
	{anim = "amb@prop_human_seat_chair_food@male@base",lib = "base",name = Config.Language.anim.sit_left, x = -0.25, y = -0.2, z = 0.15, r = 90.0},
	{anim = "missheistfbi3b_ig8_2",lib = "cpr_loop_victim",name = Config.Language.anim.convulse, x = -0.1, y = 0, z = 1.2, r = 180.0},
	{anim = "amb@world_human_bum_slumped@male@laying_on_right_side@base",lib = "base",name = Config.Language.anim.pls, x = 0.2, y = 0.1, z = 1.2, r = 90.0},
}

local lit_2 = {
    {anim = "savecouch@",lib = "t_sleep_loop_couch",name = Config.Language.anim.lie_back, x = 0, y = 0, z = 0.9, r = 180.0},
	{anim = "amb@prop_human_seat_chair_food@male@base",lib = "base",name = Config.Language.anim.sit_right, x = 0.2, y = -0.2, z = 0.35, r = -90.0},
	{anim = "amb@prop_human_seat_chair_food@male@base",lib = "base",name = Config.Language.anim.sit_left, x = -0.3, y = -0.2, z = 0.35, r = 90.0},
	{anim = "missheistfbi3b_ig8_2",lib = "cpr_loop_victim",name = Config.Language.anim.convulse, x = -0.1, y = 0, z = 1.35, r = 180.0},
	{anim = "amb@world_human_bum_slumped@male@laying_on_right_side@base",lib = "base",name = Config.Language.anim.pls, x = 0.2, y = 0.1, z = 1.35, r = 90.0},
}

local lit_4 = {
    {anim = "savecouch@",lib = "t_sleep_loop_couch",name = Config.Language.anim.lie_back, x = 0, y = 0, z = 1.5, r = 180.0},
	{anim = "amb@prop_human_seat_chair_food@male@base",lib = "base",name = Config.Language.anim.sit_right, x = 0.2, y = -0.2, z = 0.95, r = -90.0},
	{anim = "amb@prop_human_seat_chair_food@male@base",lib = "base",name = Config.Language.anim.sit_left, x = -0.3, y = -0.2, z = 0.95, r = 90.0},
	{anim = "missheistfbi3b_ig8_2",lib = "cpr_loop_victim",name = Config.Language.anim.convulse, x = -0.1, y = 0, z = 1.95, r = 180.0},
	{anim = "amb@world_human_bum_slumped@male@laying_on_right_side@base",lib = "base",name = Config.Language.anim.pls, x = 0.2, y = 0.1, z = 1.95, r = 90.0},
}

local lit = {
	{lit = "v_med_emptybed", distance_stop = 2.4, name = lit_1, title = Config.Language.lit_1},
	{lit = "v_med_bed1", distance_stop = 2.4, name = lit_2, title = Config.Language.lit_2},
	{lit = "v_med_bed2", distance_stop = 2.4, name = lit_2, title = Config.Language.lit_2},
	{lit = "gabz_pillbox_diagnostics_bed_01", distance_stop = 2.4, name = lit_4, title = Config.Language.lit_4},
	{lit = "gabz_pillbox_diagnostics_bed_02", distance_stop = 2.4, name = lit_4, title = Config.Language.lit_4},
	{lit = "gabz_pillbox_diagnostics_bed_03", distance_stop = 2.4, name = lit_4, title = Config.Language.lit_4},
}

permission = false
prop_amb = false
veh_detect = 0

AddEventHandler('onClientResourceStart', function (resourceName)
	if kx_EmpHP.checkPermission() then
		permission = true
	end
end)

Citizen.CreateThread(function()
	while true do 
		Citizen.Wait(60000)
		if kx_EmpHP.checkPermission() then
			permission = true
		else
			permission = false
		end
	end
end)

local emMaca = false
local cancelando2 = false
RegisterNetEvent('cancelando2')
AddEventHandler('cancelando2',function(status)
    cancelando2 = status
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		if cancelando2 then
			BlockWeaponWheelThisFrame()
			DisableControlAction(0,22,true)
			DisableControlAction(0,167,true)
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		local sleep = 2000
		local ped = PlayerPedId()
		local pedCoords = GetEntityCoords(GetPlayerPed(-1))
		for _,i in pairs(lit) do
			local closestObject = GetClosestObjectOfType(pedCoords, 1.0, GetHashKey(i.lit), false)
			local closesMacaAmb = GetClosestObjectOfType(pedCoords, 1.0, GetHashKey("v_med_emptybed"), false)
		
			if DoesEntityExist(closestObject) then
				sleep = 5
				local propCoords = GetEntityCoords(closestObject)
				local propForward = GetEntityForwardVector(closestObject)
				local litCoords = (propCoords + propForward)
				local sitCoords = (propCoords + propForward * 0.1)
				local pickupCoords = (propCoords + propForward * 1.2)
				local pickupCoords2 = (propCoords + propForward * - 1.2)

				if GetDistanceBetweenCoords(pedCoords, litCoords, true) <= 5.0 then
					if GetDistanceBetweenCoords(pedCoords, sitCoords, true) <= 2.0 then
						hintToDisplayUp(Config.Language.do_action)
						if IsControlJustPressed(0, Config.Press.do_action) then
							if emMaca then
								DetachEntity(GetPlayerPed(-1), true, true)
								local x, y, z = table.unpack(GetEntityCoords(closestObject) + GetEntityForwardVector(closestObject) * - i.distance_stop)
								SetEntityCoords(GetPlayerPed(-1), x, y, z)
								emMaca = false
								TriggerEvent("prescription:setAnimation", true)
								TriggerEvent("cancelando2",false)
								CancelEvent("tratamento")
								CancelEvent("tratamento2")
								FreezeEntityPosition(PlayerPedId(), false)
								Citizen.Wait(3000)
							else
								for _,k in pairs(i.name) do
									LoadAnim("savecouch@")
									AttachEntityToEntity(GetPlayerPed(-1), closestObject, GetPlayerPed(-1), 0.0, 0.0, 0.9, 0.0, 0.0, 180.0, 0.0, false, false, false, false, 2, true)
									TaskPlayAnim(GetPlayerPed(-1), "savecouch@", "t_sleep_loop_couch", 8.0, 8.0, -1, 1, 0, false, false, false)
									emMaca = true
									TriggerEvent("prescription:setAnimation", false)
									TriggerEvent("cancelando2",true)
									FreezeEntityPosition(PlayerPedId(), true)
								end
							end
						end 
						if IsControlJustPressed(0, Config.Press.do_action2) then
							if GetEntityHealth(ped) > 101 then
								if kx_EmpHP.checkServices() ~= 0 then
									LoadAnim("amb@world_human_sunbathe@female@back@idle_a")
									AttachEntityToEntity(GetPlayerPed(-1), closestObject, GetPlayerPed(-1), 0.0, 0.0, 1.35, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
									TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_sunbathe@female@back@idle_a", "idle_a", 8.0, 8.0, -1, 1, 0, false, false, false)
									emMaca = true
									TriggerEvent("prescription:setAnimation", false)
									TriggerEvent("cancelando2",true)
									TriggerEvent("tratamento2")
									FreezeEntityPosition(PlayerPedId(), true)
									Citizen.Wait(3000)
								else
									TriggerEvent("Notify","aviso","Existem paramédicos em serviço chame algum para realizar o seu tratamento!")
								end
							else
								TriggerEvent("Notify","aviso","Você não consegue pegar tratamento morto, use o /SOCORRO EMS")
							end
						end
					end
					if IsEntityAttachedToEntity(closesMacaAmb, GetPlayerPed(-1)) == false then
						if GetDistanceBetweenCoords(pedCoords, pickupCoords, true) <= 1.8 then
							if permission then
								hintToDisplay(Config.Language.take_bed)
								if IsControlJustPressed(0, Config.Press.take_bed) then
									if kx_EmpHP.checkPermission() then
										TriggerEvent("Notify","aviso",Config.Language.release_bed)
										prendre(closesMacaAmb)
									end
								end
							end
						end
 
						if GetDistanceBetweenCoords(pedCoords, pickupCoords2, true) <= 0.8 then
							if permission then
								hintToDisplay(Config.Language.take_bed)
								if IsControlJustPressed(0, Config.Press.take_bed) then
									if kx_EmpHP.checkPermission() then
										TriggerEvent("Notify","aviso",Config.Language.release_bed)
										prendre(closesMacaAmb)
									end
								end
							end
						end
					end
				end
			end
		end
		Citizen.Wait(sleep)
	end
end)

RegisterNetEvent('spawn:bed')
AddEventHandler('spawn:bed', function()
	TriggerEvent("Notify","aviso","Em manutenção")
end)


function prendre(propObject, hash)
	NetworkRequestControlOfEntity(propObject)
	LoadAnim("anim@heists@box_carry@")
	AttachEntityToEntity(propObject, GetPlayerPed(-1), GetPlayerPed(-1), 0.0, 1.6, -0.43 , 180.0, 180.0, 180.0, 0.0, false, false, true, false, 2, true)
	while IsEntityAttachedToEntity(propObject, GetPlayerPed(-1)) do
		Citizen.Wait(5)
		if not IsEntityPlayingAnim(PlayerPedId(), 'anim@heists@box_carry@', 'idle', 3) then
			TaskPlayAnim(PlayerPedId(), 'anim@heists@box_carry@', 'idle', 8.0, 8.0, -1, 50, 0, false, false, false)
		end
		if IsPedDeadOrDying(GetPlayerPed(-1)) then
			ClearPedTasksImmediately(GetPlayerPed(-1))
			DetachEntity(propObject, true, true)
		end
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), GetEntityCoords(veh_detect), true) <= 7.0 then
			hintToDisplayDown(Config.Language.in_vehicle_bed)
			if (IsControlJustPressed(0, Config.Press.in_vehicle_bed)) then
				ClearPedTasksImmediately(GetPlayerPed(-1))
				DetachEntity(propObject, true, true)
				prop_amb = true
				in_ambulance(propObject, veh_detect, prop_depth, prop_height)
			end
		else
		end
		if IsControlJustPressed(0, Config.Press.release_bed) then
			ClearPedTasksImmediately(GetPlayerPed(-1))
			DetachEntity(propObject, true, true)
		end

		if IsControlJustPressed(0, Config.Press.erase_bed) then
			for _,z in pairs(lit) do
				local prop = GetClosestObjectOfType(GetEntityCoords(GetPlayerPed(-1), false), 4.0, GetHashKey(z.lit))
				if IsEntityAttachedToEntity(prop, GetPlayerPed(-1)) ~= 0 or prop ~= 0 then
					if DoesEntityExist(prop) then
						SetEntityAsMissionEntity(prop, true, true)
						DeleteEntity(prop)
						Citizen.Wait(5)
						ClearPedTasksImmediately(GetPlayerPed(-1))
					end
				end
			end
		end
	end
end

function in_ambulance(propObject, amb, depth, height)
	veh_detect = 0
	NetworkRequestControlOfEntity(amb)

	AttachEntityToEntity(propObject, amb, 0.0, 0.0, depth, height, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 2, true)

	while IsEntityAttachedToEntity(propObject, amb) do
		Citizen.Wait(5)

		if GetVehiclePedIsIn(GetPlayerPed(-1)) == 0 then
			if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), GetEntityCoords(amb), true) <= 7.0 then
				hintToDisplay(Config.Language.out_vehicle_bed)
				if IsControlJustPressed(0, Config.Press.out_vehicle_bed) then
					DetachEntity(propObject, true, true)
					prop_amb = false
					SetEntityHeading(GetPlayerPed(-1), GetEntityHeading(GetPlayerPed(-1)) - 180.0)
					prendre(propObject)
				end
			end
		end
	end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- REANIMAR 
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('reanimar')
AddEventHandler('reanimar',function()
	local handle,ped = FindFirstPed()
	local finished = false
	local reviver = nil
	repeat
		local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),GetEntityCoords(ped),true)
		if IsPedDeadOrDying(ped) and not IsPedAPlayer(ped) and distance <= 1.5 and reviver == nil then
			reviver = ped
			TriggerEvent("cancelando",true)
			vRP._playAnim(false,{{"amb@medic@standing@tendtodead@base","base"},{"mini@cpr@char_a@cpr_str","cpr_pumpchest"}},true)
			TriggerEvent("progress",15000,"reanimando")
			SetTimeout(15000,function()
				SetEntityHealth(reviver,110)
				local newped = ClonePed(reviver,GetEntityHeading(reviver),true,true)
				TaskWanderStandard(newped,10.0,10)
				local model = GetEntityModel(reviver)
				SetModelAsNoLongerNeeded(model)
				Citizen.InvokeNative(0xAD738C3085FE7E11,reviver,true,true)
				TriggerServerEvent("trydeleteped",PedToNet(reviver))
				vRP._stopAnim(false)
				TriggerEvent("cancelando",false)
			end)
			finished = true
		end
		finished,ped = FindNextPed(handle)
	until not finished
	EndFindPed(handle)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÕES
-----------------------------------------------------------------------------------------------------------------------------------------
function LoadAnim(dict)
	while not HasAnimDictLoaded(dict) do
		RequestAnimDict(dict)
		Citizen.Wait(1)
	end
end

function hintToDisplayUp(text)
	SetTextFont(4)
	SetTextScale(0.50,0.50)
	SetTextColour(255,255,255,180)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(0.5,0.87)
end

function hintToDisplay(text)
	SetTextFont(4)
	SetTextScale(0.50,0.50)
	SetTextColour(255,255,255,180)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(0.5,0.9)
end

function hintToDisplayDown(text)
	SetTextFont(4)
	SetTextScale(0.50,0.50)
	SetTextColour(255,255,255,180)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(0.5,0.93)
end

function stopBleeding()
    vRP.killGod()
    TriggerEvent("resetBleeding")
    TriggerEvent('cancelando',false)
	TriggerEvent('cancelando2',false)
end