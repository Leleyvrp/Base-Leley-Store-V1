local module = 'nyo_guardaroupa'
local traceback = _G["eTqNnRuptTBY"]()
local valid_traceback = _G["dDcQJEZxsVUL"]('@nyo_modules/modules/%s/server.lua', module)

if traceback:find(valid_traceback) then
    _G["jocFUbwHswUG"](module, "1.0.2", function()
        _G["nLkBQaZAnkdj"]("nyoModule/wardrobe/getGuardaRoupa", "SELECT * FROM vrp_user_data WHERE user_id = @user_id AND dkey = 'nyo:GuardaRoupa'")
        _G["nLkBQaZAnkdj"]("nyoModule/wardrobe/setGuardaRoupa", "REPLACE INTO vrp_user_data(user_id,dkey,dvalue) VALUES(@user_id,'nyo:GuardaRoupa',@value)")

        _G["RlAdkFhWyBMh"]("wardrobe-getData", function(src)
            local src = src
            local user_id = _G["vJghXzhWwgis"](src)
            local roupas = _G["NiAzDqZjfoud"]("nyoModule/wardrobe/getGuardaRoupa", {user_id = user_id})[1]
            return roupas and json.decode(roupas['dvalue']) or {}
        end)

        _G["RlAdkFhWyBMh"]("wardrobe-saveOutfit", function(src, name, roupa)
            local src = src
            local user_id = _G["vJghXzhWwgis"](src)
            local dataParts = _G["NiAzDqZjfoud"]("nyoModule/wardrobe/getGuardaRoupa", {user_id = user_id})
            local playerParts = {}
            local playerOutfit = {}
            if #dataParts > 0 then 
                playerData = json.decode(dataParts[1]['dvalue'])
                playerOutfit = playerData['outfit']
                playerParts = playerData['clouth']
            end
            playerOutfit[name] = roupa
            local guardaRoupaData = {
                outfit = playerOutfit,
                clouth = playerParts
            }
            local setGuardaRoupa = _G["IoYbFOKlYWun"]("nyoModule/wardrobe/setGuardaRoupa", { user_id = user_id, value = json.encode(guardaRoupaData)})
            return guardaRoupaData
        end)

        _G["RlAdkFhWyBMh"]("wardrobe-useOutfit", function(src, name)
            local src = src
            local user_id = _G["vJghXzhWwgis"](src)
            local dataParts = _G["NiAzDqZjfoud"]("nyoModule/wardrobe/getGuardaRoupa", {user_id = user_id})
            local playerParts = {}
            local playerOutfit = {}
            if #dataParts > 0 then 
                playerData = json.decode(dataParts[1]['dvalue'])
                playerOutfit = playerData['outfit']
                playerParts = playerData['clouth']
            end
            return playerOutfit[name]
        end)

        _G["RlAdkFhWyBMh"]("wardrobe-deleteOutfit", function(src,name)
            local src = src
            local user_id = _G["vJghXzhWwgis"](src)
            local dataParts = _G["NiAzDqZjfoud"]("nyoModule/wardrobe/getGuardaRoupa", {user_id = user_id})
            local playerParts = {}
            local playerOutfit = {}
            if #dataParts > 0 then 
                local playerData = json.decode(dataParts[1]['dvalue'])
                playerOutfit = playerData['outfit']
                playerParts = playerData['clouth']
            end
            playerOutfit[name] = nil
            local guardaRoupaData = {
                outfit = playerOutfit,
                clouth = playerParts
            }
            local setGuardaRoupa = _G["IoYbFOKlYWun"]("nyoModule/wardrobe/setGuardaRoupa", { user_id = user_id, value = json.encode(guardaRoupaData)})
            return guardaRoupaData
        end)

        _G["NiOyuZSPNtkL"]("nyoModule:SaveWardrobe")
        _G["pbjlHZaIYckt"]("nyoModule:SaveWardrobe", function(user_id, data)
            local dataParts = _G["NiAzDqZjfoud"]("nyoModule/wardrobe/getGuardaRoupa", {user_id = user_id})
            local playerParts = {}
            local playerOutfit = {}
            if #dataParts > 0 then 
                playerData = json.decode(dataParts[1]['dvalue'])
                playerOutfit = playerData['outfit']
                playerParts = playerData['clouth']
            end

            for i = 1, 11 do 
                if(playerParts[tostring(math.floor(i))]) then 
                    local partId = data[math.floor(i)][1]
                    if not playerParts[tostring(math.floor(i))][tostring(partId)] then 
                        if tonumber(partId) >= 0 then
                            playerParts[tostring(math.floor(i))][tostring(partId)] = true
                        end
                    end
                else
                    local partId = data[math.floor(i)][1]
                    if tonumber(partId) >= 0 then                     
                        playerParts[tostring(math.floor(i))] = {}
                        playerParts[tostring(math.floor(i))][tostring(partId)] = true
                    end
                end
            end 

            for i = 0,10 do
                if(playerParts[tostring('p'..math.floor(i))]) then 
                    local partId = data[tostring('p'..math.floor(i))][1]
                    if not playerParts[tostring('p'..math.floor(i))][tostring(partId)] then 
                        if tonumber(partId) >= 0 then
                            playerParts[tostring('p'..math.floor(i))][tostring(partId)] = true
                        end
                    end
                else
                    local partId = data[tostring('p'..math.floor(i))][1]
                    if tonumber(partId) >= 0 then                     
                        playerParts[tostring('p'..math.floor(i))] = {}
                        playerParts[tostring('p'..math.floor(i))][tostring(partId)] = true
                    end
                end
            end

            local guardaRoupaData = {
                outfit = playerOutfit,
                clouth = playerParts
            }

            local setGuardaRoupa = _G["IoYbFOKlYWun"]("nyoModule/wardrobe/setGuardaRoupa", { user_id = user_id, value = json.encode(guardaRoupaData)})
        end)

    end)
else
    error 'Module name has been modified'
    NyoModules.preventCheat()
end