-- -----------------------------------------------------------------------------------------------------------------------------------------
-- -- VARIÁVEIS
-- -----------------------------------------------------------------------------------------------------------------------------------------
-- local aWeapons = {}
-- -----------------------------------------------------------------------------------------------------------------------------------------
-- -- WEAPONS
-- -----------------------------------------------------------------------------------------------------------------------------------------
-- local weapons = {
-- 	{ hash = "WEAPON_SMG", x = 0.15, y = -0.13, z = 0.04, xR = 0.0, yR = 135.0, zR = 5.0, model = "w_sb_smg" },
-- 	{ hash = "WEAPON_CARBINERIFLE", x = 0.15, y = -0.13, z = 0.04, xR = 0.0, yR = 135.0, zR = 5.0, model = "w_ar_carbinerifle" },
-- 	{ hash = "WEAPON_PUMPSHOTGUN", x = 0.12, y = -0.13, z = 0.08, xR = 0.0, yR = 180.0, zR = 5.0, model = "w_sg_pumpshotgun" },
-- 	{ hash = "WEAPON_BULLPUPRIFLE", x = 0.10, y = -0.13, z = -0.02, xR = 0.0, yR = 135.0, zR = 5.0, model = "w_ar_bullpuprifle" },
-- 	{ hash = "WEAPON_BULLPUPRIFLE_MK2", x = 0.10, y = -0.13, z = -0.02, xR = 0.0, yR = 135.0, zR = 5.0, model = "w_ar_bullpupriflemk2" },
-- 	{ hash = "WEAPON_SPECIALCARBINE_MK2", x = 0.15, y = -0.13, z = 0.04, xR = 0.0, yR = 135.0, zR = 5.0, model = "w_ar_specialcarbinemk2" },
-- 	{ hash = "WEAPON_SPECIALCARBINE", x = 0.15, y = -0.13, z = 0.04, xR = 0.0, yR = 135.0, zR = 5.0, model = "w_ar_specialcarbine" },
-- 	{ hash = "WEAPON_ASSAULTSMG", x = 0.15, y = -0.13, z = 0.04, xR = 0.0, yR = 135.0, zR = 5.0, model = "w_sb_assaultsmg" },
-- 	{ hash = "WEAPON_ASSAULTRIFLE", x = 0.15, y = -0.13, z = 0.04, xR = 0.0, yR = 135.0, zR = 5.0, model = "w_ar_assaultrifle" },
-- 	{ hash = "WEAPON_ASSAULTRIFLE_MK2", x = 0.15, y = -0.13, z = 0.04, xR = 0.0, yR = 135.0, zR = 5.0, model = "w_ar_assaultriflemk2" },
-- 	{ hash = "WEAPON_GUSENBERG", x = 0.15, y = -0.13, z = 0.04, xR = 0.0, yR = 135.0, zR = 5.0, model = "w_sb_gusenberg" },
-- 	{ hash = "WEAPON_MUSKET", x = 0.15, y = -0.13, z = 0.04, xR = 0.0, yR = 135.0, zR = 5.0, model = "w_ar_musket" },
-- 	{ hash = "WEAPON_PUMPSHOTGUN_MK2", x = 0.15, y = -0.13, z = 0.04, xR = 0.0, yR = 135.0, zR = 5.0, model = "w_sg_pumpshotgunmk2" }
-- }
-- -----------------------------------------------------------------------------------------------------------------------------------------
-- -- FUNCIONS
-- -----------------------------------------------------------------------------------------------------------------------------------------
-- Citizen.CreateThread(function()
-- 	while true do
-- 		local ped = PlayerPedId()

-- 		for k,v in pairs(weapons) do
-- 			if not aWeapons[v.model] then
-- 				if HasPedGotWeapon(ped,GetHashKey(v.hash),false) then
-- 					RequestModel(v.model)
-- 					while not HasModelLoaded(v.model) do
-- 						RequestModel(v.model)
-- 						Citizen.Wait(10)
-- 					end

-- 					aWeapons[v.model] = { hash = GetHashKey(v.hash), handle = CreateObject(GetHashKey(v.model),1.0,1.0,1.0,true,true,false) }
-- 					AttachEntityToEntity(aWeapons[v.model].handle,ped,GetPedBoneIndex(ped,24818),v.x,v.y,v.z,v.xR,v.yR,v.zR,false,false,false,false,2,true)
-- 					SetEntityAsMissionEntity(aWeapons[v.model].handle,true,true)
-- 					SetEntityAsNoLongerNeeded(aWeapons[v.model].handle)
-- 				end
-- 			end
-- 		end

-- 		for k,v in pairs(aWeapons) do
-- 			if GetSelectedPedWeapon(ped) == v.hash or not HasPedGotWeapon(ped,v.hash,false) then
-- 				if DoesEntityExist(v.handle) then
-- 					SetEntityAsMissionEntity(v.handle,false,false)
-- 					DeleteObject(v.handle)
-- 					aWeapons[k] = nil
-- 				end
-- 			end
-- 		end

-- 		Wait(400)
-- 	end
-- end)