_G["jocFUbwHswUG"]('nyo_spawn', function()

    _G["PfLpULLtiZtL"](1)

    -- CONFIGURAÇÃO DO MODELO DO PED E COORDENADAS DE SPAWN
    local model =  `mp_m_freemode_01`
    local spawncds = vector4(-64.087905883789,-64.483512878418,59.508422851562,161.57479858398)
    local spawnLocations =  nil 

    local spawnConfig = NyoModulesConfigs.spawnConfig    

    -- THREAD PARA INICIAR O SPAWN DO PLAYER
    _G["xHAXdcjTentA"](function()

        -- CHECA SE O PLAYER NÃO ESTÁ LOGADO, CASO O SCRIPT SEJA REINICIADO
        if not LocalPlayer.state.loggedIn then

            local plyid = _G["LlRCvkbnXmaD"]()

            -- REQUISITA E SETA O MODELO DO PED
            _G["cwhFwTuzleCL"](model)
            while not _G["zdeonhDGcSlD"](model) do
                _G["xCnKGFHhzrfn"](10)
            end
            _G["IMByFeUqruPu"](plyid,model)
            _G["fxDlyKuEfJOa"](model)

            -- SETA COORDENADAS E HEADING DO PED
            local ped = _G["ixNlddqpWxnb"]()
            LocalPlayer.state.ped = ped
            _G["JetwwkPiKyOJ"](ped,spawncds.x,spawncds.y,spawncds.z, false, false, false, true)
            _G["sWTQmhKaJtMt"](ped,spawncds.w)

            -- CONGELA O PLAYER E DEIXA INVISÍVEL PARA OUTROS JOGADORES
            _G["iWrcLaRwxXFV"](ped,true)
            _G["qnCiCoyjTNAE"](ped,true)
            _G["lvMEdGYaIsDX"](ped,false)
            _G["oInkggIqJHGz"](ped,false)
            _G["eTvAosaLKkkb"](plyid,false,false)
            _G["qtANZhFhWUpe"](ped)
            _G["AHrNjsOrfKAr"](plyid)

            -- REQUISITA A COLISÃO NAS COORDENADAS
            _G["DCGKmYooOjyE"](spawncds.x,spawncds.y,spawncds.z)
            local time = _G["TAdOnOebaZGT"]()
            while (not _G["xjbeHRVlHSRY"](ped) and (_G["TAdOnOebaZGT"]() - time) < 5000) do
                _G["xCnKGFHhzrfn"](10)
            end

            -- TIRA A LOADING SCREEN
            _G["sMhCGAWaBnrh"](1000)
            _G["xCnKGFHhzrfn"](1000)
            _G["uRrbHjZYNnYF"]()
            _G["xCnKGFHhzrfn"](100)
            _G["zllcwWJZofYq"](1000)

            -- DEIXA O PED VISÍVEL PARA OUTROS JOGADORES
            _G["iWrcLaRwxXFV"](ped,false)
            _G["qnCiCoyjTNAE"](ped,false)
            _G["oInkggIqJHGz"](ped,true)
            _G["lvMEdGYaIsDX"](ped,true)
            _G["eTvAosaLKkkb"](plyid,true,false)

            -- SETA NA STATE BAG DO PLAYER QUE ELE JÁ FOI LOGADO
            LocalPlayer.state.loggedIn = true

            -- TRIGGA O EVENTO DE PLAYER SPAWNED
            _G["PkIaDbkumtyi"]('playerSpawned', spawn)
        end
    end)

    -- _G["dEZXPGZZqzQh"]("testespawn", function(source, args)
    --     _G["PkIaDbkumtyi"]("nyo_modules:SpawnSelector")
    -- end)

    _G["xHAXdcjTentA"](function()
        _G["BSvrsmqUzwzd"](false, false)
        _G["oCbkXmXZzukm"](0)
    end)

    _G["aMsDmQWPAyqD"]("nyo_modules:SpawnSelector")
    _G["pbjlHZaIYckt"]("nyo_modules:SpawnSelector", function()
        spawnLocations = _G["ApjTqoAhtuux"]('nyo_modules:spawn:getLocations') 
        if spawnConfig.enableLastPos then 
            spawnLocations['ultpos'] = {loc = _G["iQMPjmVWjqHU"](_G["ixNlddqpWxnb"]()), name = 'Ultima Localização', desc = 'Sua ultima Localização', img = 'marker', perm = ""}
        end
        _G["BSvrsmqUzwzd"](true, true)
        _G["GZTQztNkttjo"](0)
        _G["oHbaPjWGcCjX"]({spawn = spawnLocations})
    end)

    _G["YkiTgaPmjEux"]('close', function(data,cb)
        _G["BSvrsmqUzwzd"](false, false)
        _G["oCbkXmXZzukm"](0)
    end)

    _G["YkiTgaPmjEux"]('selectSpawn', function(data, cb)
        local loc = data.locate

        if loc then 
            local dataLoc = spawnLocations[loc]
            if dataLoc then 
                _G["SHfmVvTlrBvR"](_G["ixNlddqpWxnb"](), dataLoc.loc, 0, 0, 0, 0)
                _G["BSvrsmqUzwzd"](false, false)
                _G["VSHrngpYbCMy"]()
                _G["PkIaDbkumtyi"]("ToogleBackCharacter")
            end
        end
    end)
end)