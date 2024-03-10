-----------------------------------------------------------------------------------------------------------------------------------------
--[ vRP ]--------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
--[ CONEXÕES ]---------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
kx_EmpHP = {}
Tunnel.bindInterface("vrp_hospital",kx_EmpHP)
-----------------------------------------------------------------------------------------------------------------------------------------
--[ VARIÁVEL ]---------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
local idgens = Tools.newIDGenerator()
-----------------------------------------------------------------------------------------------------------------------------------------
--[ PLUS ]----------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
TriggerEvent('es:addCommand', 'litter', function(source, args, user)
	TriggerClientEvent('spawn:bed', source)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
--[ FUNÇÃO, CHECAR PARAMEDICO ONLINE ]----------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
function kx_EmpHP.checkServices()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		local paramedicos = vRP.getUsersByPermission("paramedico.permissao")
		if parseInt(#paramedicos) == 0 then
			return true
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
--[ FUNÇÃO, CHECAR PERMISSÃO DE PARAMEDICO ]----------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
function kx_EmpHP.checkPermission()
	local source = source
	local user_id = vRP.getUserId(source)
	return vRP.hasPermission(user_id, "paramedico.permissao")
end
-----------------------------------------------------------------------------------------------------------------------------------------
--[ RESGATE ]----------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('resgate', function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local player = vRP.getUserSource(user_id)
	local colaboradordmla = vRP.getUsersByPermission("paramedico.permissao")
	local paramedicos = 0
   
   for k,v in ipairs(colaboradordmla) do
	   paramedicos = paramedicos + 1
   end

   if parseInt(#colaboradordmla) == 0 then
	   TriggerClientEvent("Notify",source,"importante", "Não há <b>colaboradores do departamento médico</b> em serviço no momento.")
   elseif parseInt(#colaboradordmla) == 1 then
	   TriggerClientEvent("Notify",source,"importante", "Atualmente, <b>"..paramedicos.." colaborador do departamento médico</b> está em serviço.")
   elseif  parseInt(#colaboradordmla) >= 1 then
	   TriggerClientEvent("Notify",source,"importante", "Atualmente, <b>"..paramedicos.." colaboradores do departamento médico</b> estão em serviço.")
   end   
end)
-----------------------------------------------------------------------------------------------------------------------------------------
--[ 112 ]--------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('112',function(source,args,rawCommand)
   if args[1] then
	   local user_id = vRP.getUserId(source)
	   local identity = vRP.getUserIdentity(user_id)
	   if vRP.hasPermission(user_id,"paramedico.permissao") then
		   if user_id then
			   TriggerClientEvent('chatMessage',-1,"[ Departamento Médico ] "..identity.name.." "..identity.firstname,{255,109,80},rawCommand:sub(4))
			   sendLog('LogAnunciosEms',"[ Departamento Médico ] "..user_id.." "..identity.name.." "..identity.firstname..": "..rawCommand:sub(4)..os.date("[Data]: %d/%m/%Y [Hora]: %H:%M:%S"),true)
		   end
	   end
   end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- [ PR ] -------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('pr',function(source,args,rawCommand)
   if args[1] then
	   local user_id = vRP.getUserId(source)
	   local identity = vRP.getUserIdentity(user_id)
	   local permission = "paramedico.permissao"
	   if vRP.hasPermission(user_id,permission) then
		   local colaboradordmla = vRP.getUsersByPermission(permission)
		   for l,w in pairs(colaboradordmla) do
			   local player = vRP.getUserSource(parseInt(w))
			   if player then
				   async(function()
					   TriggerClientEvent('chatMessage',player,"[ DMLA Interno ] "..identity.name.." "..identity.firstname,{255,109,80},rawCommand:sub(3))
				   end)
			   end
		   end
	   end
   end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- [ REANIMAR ] -------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('reanimar',function(source,args,rawCommand)
   local user_id = vRP.getUserId(source)
   if vRP.hasPermission(user_id,"administrador.permissao") or vRP.hasPermission(user_id,"paramedico.permissao") then
	   TriggerClientEvent('reanimar',source)
   end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- [ RE ] -------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('re',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"paramedico.permissao") or vRP.hasPermission(user_id,"medico-policia.permissao") or vRP.hasPermission(user_id,"comando-policia.permissao") then
		local nplayer = vRPclient.getNearestPlayer(source,2)
		if nplayer then
			if vRPclient.isInComa(nplayer) then
				local identity_user = vRP.getUserIdentity(user_id)
				local nuser_id = vRP.getUserId(nplayer)
				local identity_coma = vRP.getUserIdentity(nuser_id)
				
				TriggerClientEvent('cancelando',source,true)
				vRPclient._playAnim(source,false,{{"amb@medic@standing@tendtodead@base","base"},{"mini@cpr@char_a@cpr_str","cpr_pumpchest"}},true)
				TriggerClientEvent("progress",source,30000,"Reanimando")
 
				SetTimeout(30000,function()	
					vRPclient.killGod(nplayer)
					vRPclient._stopAnim(source,false)
					TriggerClientEvent("resetBleeding",nplayer)
					TriggerClientEvent('cancelando',source,false)
				end)
 
			else
				TriggerClientEvent("Notify",source,"importante","A pessoa precisa estar em coma para prosseguir.")
			end
		else
			TriggerClientEvent("Notify",source,"importante","Chegue mais perto do paciente.")
		end
	else
		TriggerClientEvent("Notify",source,"negado","Você não tem permissão para isso!")
	end
 end)

 RegisterCommand('cirurgia',function(source,args,rawCommand)
    local source = source
    local user_id = vRP.getUserId(source)
    local nplayer = vRP.getUserSource(parseInt(args[1]))
    local nuser_id = vRP.getUserId(nplayer)
    local identityu = vRP.getUserIdentity(nuser_id)
    if args[1] then
        if vRP.hasPermission(user_id,"paramedico.permissao") or vRP.hasPermission(user_id,"mindmaster.permissao") then
                local id = vRP.prompt(source,"Passaporte do(a) paciente:","")
                local tipo = vRP.prompt(source,"Tipo da prontuário (Cirurgia/Laudo Médico/Consulta):","")
                local descricao = vRP.prompt(source,"Descrição:","")
                local atestado = vRP.prompt(source,"Atestado:","Não foi solicitado.")
                if id == "" or tipo == "" or descricao == "" then
                    return
                end
                local paramid = vRP.getUserIdentity(user_id)
                local identity = vRP.getUserIdentity(parseInt(id))
                SendWebhookMessage(webhookprontuario,"```prolog\n[ --------------- Cirurgia --------------- ]\nParamédico: ["..user_id.."] "..paramid.name.." "..paramid.firstname.." \nPaciente: ["..id.."] "..identity.name.." "..identity.firstname.."\nDescrição: "..descricao.."\nAtestado: "..atestado.." "..os.date("\nData: %d/%m/%Y - %H:%M:%S").." \r```")
            if vRP.request(nplayer,"Deseja pagar uma cirurgia no valor de <b>R$50000</b>?",30) then
                if vRP.tryFullPayment(nuser_id,50000,(args[1])) then
                    vRP.giveBankMoney(user_id,50000,(args[1]))
                    TriggerClientEvent('Notify',source,"sucesso","Recebeu <b>R$50000</b> de <b>"..identityu.name.. " "..identityu.firstname.."</b>.")
                    if nuser_id then
                        vRP.setUData(nuser_id,"vRP:spawnController",json.encode(0))
                        TriggerClientEvent("Notify",user_id,"sucesso","Você fez uma <b>Cirurgia</b> no paciente: <b>"..identityu.name.. " "..identityu.firstname.."</b>.",5000)
                        vRP.kick(nplayer,"Sua cirurgia foi um sucesso parabéns.")
                    end    
                end
            else    
                TriggerClientEvent("Notify",source,"negado","Dinheiro insuficiente.")
            end   
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- [ RE2 ] -------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('re2',function(source,args,rawCommand)
	local valor_tratament = 3000 -- Alterar para o valor de tratamento desejado
	local user_id = vRP.getUserId(source)
	local consulta = vRPclient.getNearestPlayer(source,3)
	local nuser_id = vRP.getUserId(consulta)
	local banco = vRP.getBankMoney(nuser_id)
	if vRP.hasPermission(user_id,"paramedico.permissao") or vRP.hasPermission(user_id,"policia.permissao") then
		local nplayer = vRPclient.getNearestPlayer(source,2)
		
		if nplayer then
			if vRPclient.isInComa(nplayer) then
				if vRP.request(consulta,"Deseja pagar <b>$"..vRP.format(parseInt(valor_tratament)).."</b> dólares para <b>"..identity.name.." "..identity.firstname.."</b>?",30) then
					if banco >= parseInt(valor_tratament) then
						local identity_user = vRP.getUserIdentity(user_id)
						local nuser_id = vRP.getUserId(nplayer)
						local identity_coma = vRP.getUserIdentity(nuser_id)
						
						TriggerClientEvent('cancelando',source,true)
						vRPclient._playAnim(source,false,{{"amb@medic@standing@tendtodead@base","base"},{"mini@cpr@char_a@cpr_str","cpr_pumpchest"}},true)
						TriggerClientEvent("progress",source,30000,"reanimando")
		
						SetTimeout(30000,function()	
							vRPclient.killGod(nplayer)
							vRPclient._stopAnim(source,false)
							TriggerClientEvent("resetBleeding",nplayer)
							TriggerClientEvent('cancelando',source,false)
						end)
					else
						TriggerClientEvent("Notify",source,"negado","Dinheiro insuficiente.")
					end
				end
 
			else
				TriggerClientEvent("Notify",source,"importante","A pessoa precisa estar em coma para prosseguir.")
			end
		else
			TriggerClientEvent("Notify",source,"importante","Chegue mais perto do paciente.")
		end 
	elseif vRP.hasPermission(user_id,"medico-policia.permissao") then
		if kx_EmpHP.checkServices() then
			if nplayer then
				if vRPclient.isInComa(nplayer) then
					local identity_user = vRP.getUserIdentity(user_id)
					local nuser_id = vRP.getUserId(nplayer)
					local identity_coma = vRP.getUserIdentity(nuser_id)
					
					TriggerClientEvent('cancelando',source,true)
					vRPclient._playAnim(source,false,{{"amb@medic@standing@tendtodead@base","base"},{"mini@cpr@char_a@cpr_str","cpr_pumpchest"}},true)
					TriggerClientEvent("progress",source,30000,"reanimando")
					
					SetTimeout(30000,function()
						vRPclient.killGod(nplayer)
						vRPclient._stopAnim(source,false)
						TriggerClientEvent("resetBleeding",nplayer)
						TriggerClientEvent('cancelando',source,false)
					end)
				else
					TriggerClientEvent("Notify",source,"importante","A pessoa precisa estar em coma para prosseguir.")
				end
			end
		else
			TriggerClientEvent("Notify",source,"negado","Existem membros do Departamento Médico em serviço!")
		end 
	end
 end)
-----------------------------------------------------------------------------------------------------------------------------------------
--[ TRATAMENTO - Efetua tratamento mediante pagamento de cobrança ao paciente ]-------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('tratamento',function(source,args,rawCommand)
	local valor_tratament = 3000 -- Alterar para o valor de tratamento desejado
	local user_id = vRP.getUserId(source)
	local consulta = vRPclient.getNearestPlayer(source,3)
	local nuser_id = vRP.getUserId(consulta)
	local resultado = json.decode(consulta) or 0
	local banco = vRP.getBankMoney(nuser_id)
	local identity =  vRP.getUserIdentity(user_id)
	local identityu = vRP.getUserIdentity(nuser_id)
	if vRP.hasPermission(user_id,"paramedico.permissao") then
		local nplayer = vRPclient.getNearestPlayer(source,3)
		if nplayer then
			if not vRPclient.isComa(nplayer) then
				if vRP.request(consulta,"Deseja pagar <b>$"..vRP.format(parseInt(valor_tratament)).."</b> dólares para <b>"..identity.name.." "..identity.firstname.."</b>?",30) then
					if banco >= parseInt(valor_tratament) then
						vRP.setBankMoney(nuser_id,parseInt(banco-valor_tratament))
						vRP.giveBankMoney(user_id,parseInt(valor_tratament))
						vRPclient._playAnim(source,true,{{"mp_common","givetake1_a"}},false)
						vRPclient._playAnim(nuser_id,true,{{"mp_common","givetake1_a"}},false)
						TriggerClientEvent("tratamento",nplayer)
						TriggerClientEvent("Notify",source,"sucesso","Recebeu <b>$"..vRP.format(parseInt(valor_tratament)).." dólares</b> de <b>"..identityu.name.. " "..identityu.firstname.."</b>.<br>Tentando tratar o paciente.",10000)
						local player = vRP.getUserSource(parseInt(args[2]))
						if player == nil then
							return
						else
							local identity = vRP.getUserIdentity(user_id)
							TriggerClientEvent("Notify",player,"importante","<b>"..identity.name.." "..identity.firstname.."</b> transferiu <b>$"..vRP.format(parseInt(valor_tratament)).." dólares</b> para sua conta.")
						end
					else
						TriggerClientEvent("Notify",source,"negado","Dinheiro insuficiente.")
					end
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
--[ TRATAMENTO2 - Efetua tratamento sem solicitar cobrança ao paciente  ]-------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('tratamento2',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"paramedico.permissao") then
		local nplayer = vRPclient.getNearestPlayer(source,3)
		if nplayer then
			if not vRPclient.isComa(nplayer) then
				TriggerClientEvent("tratamento",nplayer)
				TriggerClientEvent("Notify",source,"sucesso","Tentando tratar o paciente.",10000)
			end
		end
	end
 end)
-----------------------------------------------------------------------------------------------------------------------------------------
--[ FUNÇÕES ]----------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
function kx_EmpHP.checkServices()
   local source = source
   local user_id = vRP.getUserId(source)
   if user_id then
	   local dmla = vRP.getUsersByPermission("paramedico.permissao")
	   if #dmla <= 2 then
		   return 1
	   else
		   return 0
	   end
   end
end