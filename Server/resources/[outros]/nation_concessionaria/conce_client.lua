local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
func = Tunnel.getInterface("nation_concessionaria")

fclient = {}
Tunnel.bindInterface("nation_concessionaria",fclient)


local timer = 0
local config = false
local inTest = false
local nearestConce = {}


RegisterNetEvent('nationConce:setConfig')
AddEventHandler('nationConce:setConfig',function(cfg)
	config = cfg
end)

Citizen.CreateThread(function()
	while not config do
		TriggerServerEvent("nationConce:getConfig")
		Citizen.Wait(1000)
	end
end)

--- THREAD PARA ENCONTRAR A CONCESSIONÁRIA MAIS PRÓXIMA ---

Citizen.CreateThread(function()
	while true do
		if not nui and not inTest and timer == 0 and config then
			local playercoords = GetEntityCoords(PlayerPedId())
			if nearestConce and nearestConce.conce then
				local distance = #(playercoords - nearestConce.conce)
				if distance >= 15 then
					nearestConce = false
				elseif distance < 1.1 then
					nearestConce.close = true
				else
					nearestConce.close = false
				end
			else
				for k,v in ipairs(config.locais) do
					local distance = #(playercoords - v.conce)
					if distance < 5 then
						nearestConce = config.locais[k]
					end
				end
			end
		end
		Citizen.Wait(500)
	end
end)


--- THREAD PARA DESENHAR OS MARKERS (CONCE MAIS PRÓXIMA) E ABRIR A NUI CASO O PLAYER PRESSIONE "E" ---

Citizen.CreateThread(function()
	while true do
		local idle = 500
		if not nui and not inTest and timer == 0 and nearestConce and nearestConce.conce then
			local coords = nearestConce.conce
			idle = 5
			DrawText3D(coords.x,coords.y,coords.z,"~g~E~w~ - Concessionária")
			DrawText3D(coords.x,coords.y,coords.z-0.20,"Carros mods são apenas para test drive!")
			if nearestConce.close then
				if IsControlJustPressed(0,38) and not IsPedInAnyVehicle(PlayerPedId(),false) and GetEntityHealth(PlayerPedId()) > 101 and func.hasPermission() then
					toggleNui()
				end
			end
		end
		Citizen.Wait(idle)
	end
end)


function checkNui(coords)
	Citizen.CreateThread(function()
		while nui do
			local playercoords = GetEntityCoords(PlayerPedId())
			local distance = #(playercoords - coords)
			if distance > 1.5 then
				closeConce()
			end
			Citizen.Wait(1000)
		end
	end)
end


--- INICIA O TEST DRIVE

function testDrive(model,price)
	if not nearestConce then return end
	local mhash = loadModel(model)
	closeConce()
	while not mhash do 
	Citizen.Wait(100)
	end
	if mhash then
		local count = 0
		for _,spawn in ipairs(nearestConce.test_locais) do
			local spawnCoords = spawn.coords
			local closestVehicleOnSpot = GetClosestVehicle(spawnCoords.x,spawnCoords.y,spawnCoords.z,3.001,0,71)
			if DoesEntityExist(closestVehicleOnSpot) then
				count = count + 1
				if count >= #nearestConce.test_locais then
					TriggerEvent('Notify', 'negado', 'Todas as vagas estão ocupadas no momento.', 3000)
					func.chargeBack(price)
					return
				end
			else
				Citizen.CreateThread(function()
					TriggerEvent("Notify", "importante", "Test drive sendo iniciado em breve ...",3000)

					inTest = true
					func.soloSession()
					DoScreenFadeOut(1000)
					Wait(1000)
					local myCoords = GetEntityCoords(PlayerPedId())
					SetEntityCoords(PlayerPedId(), spawnCoords)
					local veh = createVehicle(model,spawnCoords)
					SetEntityHeading(veh, spawn.h)
					SetPedIntoVehicle(PlayerPedId(), veh, -1)
					local playerAround = {}
					for _,player in ipairs(GetActivePlayers()) do
						playerAround[#playerAround + 1] = GetPlayerServerId(player)
					end
					TriggerServerEvent("core_fuel:tryFuel",playerAround,VehToNet(veh), 100)
					SetVehicleDoorsLocked(veh,4)
					DoScreenFadeIn(1000)
					SendNUIMessage({ action = "showTimer", time = config.tempo_testdrive })
					TriggerEvent("Notify", "importante", "Test Drive iniciado. Não saia do veículo e nem vá para muito longe do local.",3000)
					TriggerEvent("Notify", "importante", "Use <b> /tuning </b> para tunar o veículo",5000)
					Wait(1000)
					while inTest and IsPedInAnyVehicle(PlayerPedId(),false) and #(GetEntityCoords(PlayerPedId()) - spawnCoords) < config.maxDistance and GetPedInVehicleSeat(veh,-1) == PlayerPedId() do
						Citizen.Wait(50)
					end
					if inTest then
						inTest = false
						TriggerEvent("Notify", "aviso", "Test Drive cancelado.",3000)
						if #(GetEntityCoords(PlayerPedId()) - spawnCoords) >= config.maxDistance then
							TriggerEvent("Notify", "aviso", "Você se afastou muito do local do test.",3000)
						end
						SendNUIMessage({ action = "stopTimer" })

					else
						TriggerEvent("Notify", "importante", "Test Drive finalizado com sucesso.",3000)
					end
					DoScreenFadeOut(1000)
					Wait(1000)
					SetEntityAsNoLongerNeeded(veh)
					SetEntityAsMissionEntity(veh,true,true)
					DeleteVehicle(veh)
					SetEntityCoords(PlayerPedId(), myCoords)
					Wait(1000)
					func.remSoloSession()
					DoScreenFadeIn(1000)
					if GetEntityHealth(PlayerPedId()) < 102 then
						vRP.killGod()
						vRP.setHealth(150)
					end
				end)
				return
			end
		end 
	else
		TriggerEvent("Notify","aviso","Veículo indisponível para test drive.",3000)
		func.chargeBack(price)
	end
end

function fclient.isInTest()
	return inTest
end



--- CRIA O VEÍCULO DO TEST DRIVE

-- function createVehicle(mhash, spawnCoords)
-- 	print(mhash)
-- 	while not HasModelLoaded(mhash) do
-- 		RequestModel(mhash)
-- 		Citizen.Wait(10)
-- 	end
-- 	local vehicle = CreateVehicle(mhash,spawnCoords.x,spawnCoords.y,spawnCoords.z+0.5,0.0,true,false)

-- 	if DoesEntityExist(vehicle) then
-- 		local netveh = VehToNet(vehicle)
-- 		NetworkRegisterEntityAsNetworked(vehicle)
-- 		while not NetworkGetEntityIsNetworked(vehicle) do
-- 			NetworkRegisterEntityAsNetworked(vehicle)
-- 			Citizen.Wait(1)
-- 		end
-- 		if NetworkDoesNetworkIdExist(netveh) then
-- 			SetEntitySomething(vehicle,true)
-- 			if NetworkGetEntityIsNetworked(vehicle) then
-- 				SetNetworkIdExistsOnAllMachines(netveh,true)
-- 			end
-- 		end
-- 		SetVehicleNumberPlateText(vehicle,vRP.getRegistrationNumber())
-- 		SetVehicleIsStolen(vehicle,false)
-- 		SetVehicleNeedsToBeHotwired(vehicle,false)
-- 		SetEntityInvincible(vehicle,false)
-- 		SetEntityAsMissionEntity(vehicle,true,true)
-- 		SetVehicleHasBeenOwnedByPlayer(vehicle,true)

-- 		SetVehRadioStation(vehicle,"OFF")
-- 		SetModelAsNoLongerNeeded(mhash)
-- 	end
-- 	return vehicle
-- end
function createVehicle(mhash, spawnCoords, plate)
    while not HasModelLoaded(mhash) do
        RequestModel(mhash)
        Citizen.Wait(10)
    end
    local vehicle = CreateVehicle(mhash,spawnCoords.x,spawnCoords.y,spawnCoords.z,0.0,true,true)
    if plate then
        SetVehicleNumberPlateText(vehicle,plate)
    end
    if DoesEntityExist(vehicle) then
        local netveh = VehToNet(vehicle)
        NetworkRegisterEntityAsNetworked(vehicle)
        while not NetworkGetEntityIsNetworked(vehicle) do
            NetworkRegisterEntityAsNetworked(vehicle)
            Citizen.Wait(1)
        end
        if NetworkDoesNetworkIdExist(netveh) then
            SetEntitySomething(vehicle,true)
            if NetworkGetEntityIsNetworked(vehicle) then
                SetNetworkIdExistsOnAllMachines(netveh,true)
            end
        end
        SetVehicleIsStolen(vehicle,false)
        SetVehicleNeedsToBeHotwired(vehicle,false)
        SetEntityInvincible(vehicle,false)
        SetEntityAsMissionEntity(vehicle,true,true)
        SetVehicleHasBeenOwnedByPlayer(vehicle,true)
        SetVehRadioStation(vehicle,"OFF")
        SetModelAsNoLongerNeeded(mhash)
        TriggerServerEvent("setPlateEveryone",plate)
        TriggerServerEvent("vrp_garages:addKey",plate)
    end
    return vehicle
end


-- CARREGAR O MODEL DO VEÍCULO --
function loadModel(model)
	local mhash = GetHashKey(model)
	local timeout = 30 * 1000
	while not HasModelLoaded(mhash) do
		RequestModel(mhash)
		timeout = timeout - 1
		if timeout <= 0 then
			return false
		end
		Citizen.Wait(1)
	end
	return mhash
end


--- PEGA AS MODIFICAÇÕES DO VEÍCULO PARA SALVAR NO BANCO DE DADOS

function fclient.getVehicleMods(vehicle)
	local myveh = {}
	local mhash = loadModel(vehicle)
	local coords = GetEntityCoords(PlayerPedId())
	if mhash then
		local veh = CreateVehicle(mhash,coords.x,coords.y,coords.z-10,0.0,false,false)
		if DoesEntityExist(veh) then
			myveh = getVehicleMods(veh)
			SetEntityAsNoLongerNeeded(veh)
			SetEntityAsMissionEntity(veh,true,true)
			DeleteVehicle(veh)
		end
	end
	return myveh
end



--- RETORNA A CLASSE DE UM VEÍCULO PELO ÍNDICE ---

function getVehicleClass(class)
	return config.vehicleClasses[class] or "none"
end

--- RETORNA A LISTA DE VEÍCULOS DA CONCE

function getConceVehicleList()
	local vehicles = func.getConceVehicles()
	local discount = func.getDiscount() / 100
	if vehicles and #vehicles > 0 then
		for i in ipairs(vehicles) do
			if not vehicles[i].class then
			
				local class = GetVehicleClassFromName(vehicles[i].vehicle)
				vehicles[i].class = getVehicleClass(class)
			end
			vehicles[i].price = vehicles[i].price - (vehicles[i].price * discount)
		end
	end
	return vehicles or {}
end

--- RETORNA A LISTA DE VEÍCULOS EM DESTAQUE DA CONCE

function getTopVehicleList()
	local vehicles = func.getTopVehicles()
	local discount = func.getDiscount() / 100
	if vehicles and #vehicles > 0 then
		for i in ipairs(vehicles) do
			if not vehicles[i].class then
				local class = GetVehicleClassFromName(vehicles[i].vehicle)
				vehicles[i].class = getVehicleClass(class)
			end
			vehicles[i].price = vehicles[i].price - (vehicles[i].price * discount)
		end
	end
	return vehicles or {}
end

--- RETORNA A LISTA DOS VEÍCULOS DO PLAYER

function getMyVehicles(force)
	local myVehicles = func.getMyVehicles(force)
	if myVehicles and #myVehicles > 0 then
		for i in ipairs(myVehicles) do
			if not myVehicles[i].class then
				local class = GetVehicleClassFromName(myVehicles[i].vehicle)
				myVehicles[i].class = getVehicleClass(class)
			end
		end
	end
	return myVehicles
end

--- TOGGLE DA NUI ---
function toggleNui()
	nui = not nui
	if nui then
		openConce()
	else
		closeConce()
	end
end

--- ABRIR CONCE ---
function openConce()
	TriggerScreenblurFadeIn(500)
	SetNuiFocus(true,true)
	SendNUIMessage({
		action = "show", config = config, vehList = getConceVehicleList(),
		topVehicles = getTopVehicleList(), myVehicles = getMyVehicles(true) 
	})
	nui = true
	checkNui(GetEntityCoords(PlayerPedId()))
end


--- ABRIR MENU DE GERENCIAMENTO DA CONCE

function fclient.showAdminMenu()
	if not nui then
		nui = true
		checkNui(GetEntityCoords(PlayerPedId()))
		TriggerScreenblurFadeIn(500)
		SetNuiFocus(true,true)
		SendNUIMessage({
			action = "showAdmin"
		})
	end
end


--- FECHAR A NUI ---
function closeConce()
	TriggerScreenblurFadeOut(500)
	SetNuiFocus(false)
	SendNUIMessage({action = "hide"})
	nui = false
end

function fclient.closeConce2()
	TriggerScreenblurFadeOut(500)
	SetNuiFocus(false)
	SendNUIMessage({action = "hide"})
	nui = false
end


--- PEGAR A COR DO VEÍCULO

function split(s, delimiter)
    result = {};
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, parseInt(match));
    end
    return result;
end

function getColor(color)
	return split(color, ",")
end

---


-- FECHAR --
RegisterNUICallback("close", function(data)
	closeConce()
	SendNUIMessage({action = "hideAdmin"})
end) 


RegisterNUICallback("buy-vehicle", function(data, cb)
	if data and timer == 0 then
		startTimer(3)
		local vehicle, color = data.vehicle, getColor(data.color)
		local state, message = func.buyVehicle(vehicle,color)
		cb({state, message})
		return
	end
end) 


RegisterNUICallback("sell-vehicle", function(data, cb)
	if data and timer == 0 then
		startTimer(3)
		local vehicle = data.vehicle
		local state, message = func.sellVehicle(vehicle)
		cb({state, message})
		return
	end
end) 


RegisterNUICallback("updateVehicles", function(data, cb)
	cb({ vehList = getConceVehicleList(), topVehicles = getTopVehicleList(), myVehicles = getMyVehicles() })
end) 

RegisterNUICallback("try-test", function(data, cb)
	if data and timer == 0 then
		startTimer(7)
		local state, message = func.testDrive(data.vehicle)
		cb({state = state, message = message})
	end
end) 

RegisterNUICallback("pay-test", function(data, cb)
	if data then
		local state, message,price = func.payTest(data.vehicle)
		cb({state,message,price})
	end
end) 

RegisterNUICallback("test-drive", function(data)
	if data then
		testDrive(data.vehicle,data.price)
	end
end) 

RegisterNUICallback("end-test", function(data)
	inTest = false
end) 


RegisterNUICallback("try-rent", function(data, cb)
	if data and timer == 0 then
		startTimer(3)
		local state, message = func.rentVehicle(data.vehicle)
		cb({state = state, message = message})
	end
end) 

RegisterNUICallback("pay-rent", function(data, cb)
	if data then
		local state, message = func.payRent(data.vehicle)
		cb({state,message})
	end
end) 


RegisterNUICallback("manageConce", function(data)
	if data and timer == 0 then
		startTimer(3)
		func.manageConce(data.mode,data.vehicle,data.qtd)
	end
end) 


--- COOLDOWN

function startTimer(time)
	Citizen.CreateThread(function()
		timer = time
		while timer > 0 do 
			Citizen.Wait(1000)
			timer = timer - 1
		end
	end)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- DRAWTEXT3D
-----------------------------------------------------------------------------------------------------------------------------------------
function DrawText3D(x,y,z,text)
	local onScreen,_x,_y = World3dToScreen2d(x,y,z)
	SetTextFont(4)
	SetTextScale(0.35,0.35)
	SetTextColour(255,255,255,100)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)
	local factor = (string.len(text)) / 450
	DrawRect(_x,_y+0.0125,0.05+factor,0.03,0,0,0,100)
end