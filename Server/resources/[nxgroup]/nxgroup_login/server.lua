local Tunnel = module('vrp', 'lib/Tunnel')
local Proxy = module('vrp', 'lib/Proxy')
vRP = Proxy.getInterface('vRP')

Klaus = {}
Tunnel.bindInterface('nxgroup_login', Klaus)
vCLIENT = Tunnel.getInterface('nxgroup_login')

vRP.prepare("nxgroup_login/getinfos","SELECT * FROM vrp_user_identities WHERE user_id = @user_id")

RegisterCommand("login",function(source)
	if vRP.hasPermission(user_id,"admin.permissao") then
    TriggerClientEvent("vrp:ToogleLoginMenu",source)
	end
end)

function Klaus.login()
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	local bank = vRP.getBankMoney(user_id)
	local money = vRP.getMoney(user_id)
	if identity then
		return vRP.getMoney(user_id), vRP.getBankMoney(user_id),  identity.name.. "  "  ..identity.firstname 
	end
end


