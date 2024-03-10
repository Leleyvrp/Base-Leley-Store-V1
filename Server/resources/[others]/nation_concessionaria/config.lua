local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

config = {}
Proxy.addInterface("nation_concessionaria", config)

--[[ cada veículo deve conter => { name, price, capacidade, modelo } ]]
vehList = vRP.vehList

-- RETORNA AS INFORMAÇÕES DO VEÍCULO REFERENTE À LISTA DE VEÍCULOS (VEHLIST)
config.getVehicleInfo = function(vehicle)
	return vRP.vehList(vehicle)
end
-------------------------------
--- MYSQL---
vRP._prepare("nation_conce/getConceVehicles","SELECT * FROM nation_concessionaria WHERE estoque > 0")
vRP._prepare("nation_conce/hasVehicle","SELECT vehicle, alugado FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle")
vRP._prepare("nation_conce/hasFullVehicle","SELECT vehicle FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle AND alugado = 0")
vRP._prepare("nation_conce/hasRentedVehicle","SELECT vehicle FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle AND alugado = 1")
vRP._prepare("nation_conce/getMyVehicles", "SELECT * FROM vrp_user_vehicles WHERE user_id = @user_id AND alugado = 0")
vRP._prepare("nation_conce/deleteRentedVehicles", "DELETE FROM vrp_user_vehicles WHERE alugado = 1 AND data_alugado != @data_alugado")
vRP._prepare("nation_conce/updateUserVehicle","UPDATE vrp_user_vehicles SET alugado = 0 WHERE user_id = @user_id AND vehicle = @vehicle")
vRP._prepare("nation_conce/addUserVehicle",[[INSERT IGNORE INTO vrp_user_vehicles(user_id,vehicle,detido,time,engine,body,fuel,ipva) VALUES(@user_id,@vehicle,@detido,@time,@engine,@body,@fuel,@ipva);]])
vRP._prepare("nation_conce/addUserRentedVehicle",[[ INSERT IGNORE INTO vrp_user_vehicles(user_id,vehicle,detido,time,engine,body,fuel,ipva,alugado,data_alugado) VALUES(@user_id,@vehicle,@detido,@time,@engine,@body,@fuel,@ipva,1,@data_alugado);]])
vRP._prepare("nation_conce/removeUserVehicle","DELETE FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle")

-----------

function getConceList(cb)
	Citizen.CreateThread(function()
		local vehicles = vRP.query("nation_conce/getConceVehicles") or {}
		cb(vehicles)
	end)
end


function getTopList()
	getConceList(function(list)
		local vehicleList = {}
		for k,v in ipairs(list) do
			local vehInfo = config.getVehicleInfo(v.vehicle)
			if vehInfo then
				vehicleList[#vehicleList+1] = { 
					vehicle = v.vehicle, price = vehInfo.price
				}
			end
		end
		if #vehicleList >= 5 then
			table.sort(vehicleList, function(a, b) return a.price > b.price end)
			for i = 1, 5 do
				local veh = vehicleList[i]
				config.topVehicles[i] = veh.vehicle 
			end
		end
	end)
end


-- LISTA DOS VEÍCULOS EM DESTAQUE

config.topVehicles = {	 
	"panto", 
	"18macan", 
	"palameila", 
	"brioso", 
	"akuma"
}

getTopList() -- pega os veículos mais caros da conce e coloca na lista de destaque

config.logo = "https://cdn.discordapp.com/attachments/863971735145545758/969381230007160902/Flush_6.png" -- LOGO DO SERVIDOR

config.imgDir = "http://flushrp.com/img/carros/" -- DIRETORIO DAS IMAGENS DOS VEÍCULOS

config.defaultImg = "https://svgsilh.com/svg/160895.svg" -- IMAGEM DEFAULT (SERÁ EXIBIDA QUANDO NÃO EXISTIR A IMAGEM DE ALGUM VEÍCULO NO DIRETÓRIO ESPECIFICADO)

config.openconce_permission = nil -- permissao para abrir a concessionaria

config.updateconce_permission = "mindmaster.permissao" -- permissao para abrir o menu de gerenciamento da conce

config.porcentagem_venda = 0.00001 -- porcentagem de venda dos veículos possuidos

config.porcentagem_testdrive = 0.1 -- porcentagem do valor do veículo paga para a realização do test drive

config.tempo_testdrive = 60 -- tempo de duração do test drive em segundos

config.maxDistance = 1050 -- distância máxima (em radius(raio)) que o player poderá ir quando estiver realizando o test drive

config.porcentagem_aluguel = 5 -- porcentagem do valor do veículo paga para alugar


-- NOMES DAS CLASSES DOS VEÍCULOS

config.vehicleClasses = {
	[0] = "compact",  
	[1] = "sedan",  
	[2] = "suv",  
	[3] = "coupé",  
	[4] = "muscle",  
	[5] = "classic",  
	[6] = "sport",  
	[7] = "super",  
	[8] = "moto",  
	[9] = "off-road",  
	[10] = "industrial",  
	[11] = "utility",
	[12] = "van",
	[13] = "cycle",  
	[14] = "boat",  
	[15] = "helicopter",  
	[16] = "plane",  
	[17] = "service", 
	[18] = "emergency",  
	[19] = "military",  
	[20] = "commercial",  
	[21] = "train" 
}


-- CLASSES QUE APARECEM NO MENU DA CONCE

config.conceClasses = {
	{ class = "sedans", img = "https://img.indianautosblog.com/2018/09/25/india-bound-2019-honda-civic-images-front-three-qu-e966.jpg" },
	{ class = "suvs", img = "https://www.otokokpit.com/wp-content/uploads/2017/11/yeni-range-rover-evoque-landmark-edition-1.jpg" },
	{ class = "imports", img = "https://besthqwallpapers.com/Uploads/25-6-2019/97150/thumb2-lamborghini-gallardo-supercars-motion-blur-road-gray-gallardo.jpg" },
	{ class = "trucks", img = "https://images3.alphacoders.com/149/thumb-1920-149257.jpg" },
	{ class = "motos", img = "https://i.pinimg.com/originals/cc/92/dd/cc92dda56f23a2a41682e80e7fe0f744.jpg" },
	{ class = "outros", img = "https://besthqwallpapers.com/Uploads/13-5-2018/52433/thumb2-ford-transit-custom-sport-4k-2018-cars-motion-blur-orange-ford-transit.jpg" },
}


-- IMAGEM QUE APARECE NA SEÇÃO DE 'MEUS VEÍCULOS'

config.myVehicles_img = "https://cdn.discordapp.com/attachments/905311358340452412/905311875640754227/50-505834_download-nfs-hot-pursuit.jpg"



-- CLASSES DOS VEÍCULOS INSERIDAS DENTRO DAS CLASSES QUE APARECEM NA CONCE

config.availableClasses = {
	["sedans"] = {"sedan"},
	["suvs"] = {"suv"},
	["imports"] = {"classic", "sport", "super"},  
	["trucks"] = {"industrial", "utility", "commercial"},
	["motos"] = {"moto", "cycle"},
	["outros"] = {"compact", "coupé", "muscle", "off-road",  "boat",  "helicopter",  "plane",  "service", "emergency",  "military",  "train", "van"}
}



-- ÍCONES DA CONCE

config.miscIcons = {
	{ description = "Força e velocidade necessárias para aquela dose de adrenalina.", img = "https://cdn.discordapp.com/attachments/813921708758663208/884198225916084294/turbo-engine.png" },
    { description = "Incríveis opções econômicas que cabem no seu bolso!", img = "https://cdn.discordapp.com/attachments/813921708758663208/884198522751180830/piggybank.png" },
    { description = "Para você que valoriza a eficácia e praticidade.", img = "https://cdn.discordapp.com/attachments/813921708758663208/884198854323499038/renew.png" },
}


-- DESCONTOS POR PERMISSAO

config.descontos = {
	{ perm = "mindmaster.permissao", porcentagem = 50 }
}


-- FUNCÃO DE COMPRA DO VEÍCULO

config.tryBuyVehicle = function(source, user_id, vehicle, color, price, mods)
	if source and user_id and vehicle and color and price and mods then
		local data = vRP.query("nation_conce/hasVehicle", {user_id = user_id, vehicle = vehicle})
		local hasVehicle = #data > 0
		local isRented = data[1] and data[1].alugado > 0
		if hasVehicle and not isRented then
			return false, "veículo já possuído"
		end
		if vRP.tryFullPayment(user_id,price) then
			Citizen.CreateThread(function()
				if isRented then
					vRP.execute("nation_conce/updateUserVehicle", {
						user_id = user_id, vehicle = vehicle
					})
				else 
					vRP.execute("nation_conce/addUserVehicle", {
						user_id = user_id, vehicle = vehicle, detido = 0, time = 0, engine = 1000, body = 1000, fuel = 100, ipva = os.time()
					})
				end
				mods.customPcolor = color
				vRP.setSData("custom:u"..user_id.."veh_"..vehicle,json.encode(mods))
			end)
			return true, "sucesso!"
		else
			return false, "falha no pagamento"
		end
	end
	return false, "erro inesperado"
end




-- FUNÇÃO DE VENDA DO VEÍCULO

config.trySellVehicle = function(source, user_id, vehicle, price)
	if source and user_id and vehicle and price then
		local hasVehicle = #vRP.query("nation_conce/hasFullVehicle", {user_id = user_id, vehicle = vehicle}) > 0
		if hasVehicle then
			Citizen.CreateThread(function()
				vRP.execute("nation_conce/removeUserVehicle", {user_id = user_id, vehicle = vehicle})
				vRP.giveMoney(user_id,parseInt(price))
			end)
			return true, "sucesso!"
		else
			return false, "veículo alugado ou já vendido"
		end
	end
	return false, "erro inesperado"
end



-- VERIFICAÇÃO DE TEST DRIVE

-- config.tryTestDrive = function(source, user_id, info)
-- 	if source and user_id and info then
-- 		local price = parseInt(info.price * (config.porcentagem_testdrive / 100))
-- 		return true, "deseja pagar <b>$ "..vRP.format(price).."</b> para realizar o test drive em um(a) <b>"..info.modelo.."</b> ?"
-- 	end
-- 	return false, "erro inesperado"
-- end



-- VERIFICAÇÃO DO PAGAMENTO DO TEST DRIVE

-- config.payTest = function(source,user_id, info)
-- 	if source and user_id and info then
-- 		local price = parseInt(info.price * (config.porcentagem_testdrive / 100))
-- 		if vRP.tryFullPayment(user_id, price) then
-- 			-- srv = Proxy.getInterface("ws-bank")
-- 			-- srv.register_trans(user_id,"Test drive em veiculo",price)
-- 			return true, "sucesso!", price
-- 		else
-- 			return false, "falha no pagamento"
-- 		end
-- 	end
-- 	return false, "erro inesperado"
-- end


-- DEVOLVER O DINHEIRO CASO NÃO DÊ PARA FAZER O TEST

config.chargeBack = function(source,user_id, price)
	if source and user_id and price then
		vRP.giveMoney(user_id,price)
		TriggerClientEvent("nyo_notify",source, "#FFA500","Alerta", "Você recebeu seus <b>$ "..vRP.format(price).."</b> de volta.", 5000)
	end
end



-- VERIFICAÇÃO DE ALUGUEL DO VEÍCULO

config.tryRentVehicle = function(source, user_id, info)
	if source and user_id and info then
		local hasVehicle = #vRP.query("nation_conce/hasVehicle", {user_id = user_id, vehicle = info.name}) > 0
		if hasVehicle then
			return false, "veículo já possuído"
		end
		local price = parseInt(info.price * (config.porcentagem_aluguel / 100))
		return true, "deseja pagar <b>$ "..vRP.format(price).."</b> para alugar um(a) <b>"..info.modelo.."</b> por 1 dia?"
	end
	return false, "erro inesperado"
end




-- VERIFICAÇÃO DO PAGAMENTO DO ALUGUEL DO VEÍCULO
config.tryPayRent = function(source,user_id, info)
	if source and user_id and info then
		local price = parseInt(info.price * (config.porcentagem_aluguel / 100))
		if vRP.tryFullPayment(user_id, price) then
			Citizen.CreateThread(function()
				vRP.execute("nation_conce/addUserRentedVehicle", {
					user_id = user_id, vehicle = info.name, detido = 0, time = 0, engine = 1000, body = 1000, fuel = 100, ipva = os.time(), data_alugado = os.date("%d/%m/%Y")
				})
			end)
			return true, "sucesso!"
		else
			return false, "falha no pagamento"
		end
	end
	return false, "erro inesperado"
end



-- LOCAIS DAS CONCESSIONARIAS E REALIZAÇÃO DE TESTES
config.locais = {
	{ 
		conce = vec3(-40.08,-1097.21,26.42), 
		test_locais = {
			{ coords = vec3(-1003.75,-3021.72,13.95), h = 58.96 },
			{ coords = vec3(-998.79,-3013.27,13.95), h = 59.56 },
			{ coords = vec3(-995.18,-3006.88,13.95), h = 59.19 },
			{ coords = vec3(-991.43,-2998.28,13.95), h = 60.29 },
		}
	},
	--[[{ 
		conce = vec3(-1123.49,-1708.12,4.45),
		test_locais = {
			{ coords = vec3(-1177.30,-1743.51,4.04), h = 204.54 },
			{ coords = vec3(-1173.95,-1741.34,4.05), h = 212.41 },
			{ coords = vec3(-1171.41,-1739.55,4.07), h = 210.01 },
		} 
	},]]--
}

