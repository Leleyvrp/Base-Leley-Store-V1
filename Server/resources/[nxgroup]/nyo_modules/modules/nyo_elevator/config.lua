NyoModules.registerConfig({
    config = {
        ['configElevador1'] = {
            type = 'elevador', -- não alterar
            input = 'elevador', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {0,255,0,75}, -- marker color (R,G,B,A)
                scale = vec3(1.0, 1.0, 1.0),
                rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                bobUpAndDown = false, -- marker bopUpAndDown
                faceCamera = false, -- marker faceCamera
                rotation = true, -- marker rotation
                custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                }
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Policia', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissão para acessar o elevador (vazio = todo mundo)
            
            elevadorName = "Elevador Policia",

            locs = {
                {coord = vector3(-2290.39,266.02,164.47), heading = 359.29, name = 'Garagem'},
                {coord = vector3(-2276.29,347.02,174.6), heading = 359.29, name = 'Andar Principal'},
                {coord = vector3(-2268.48,378.57,188.75), heading = 359.29, name = 'Heliponto'},
                {coord = vector3(-2309.89,352.67,178.57), heading = 359.29, name = 'Celas'}
            }
        },
        ['configElevador2'] = {
            type = 'elevador', -- não alterar
            input = 'elevador', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {0,255,0,75}, -- marker color (R,G,B,A)
                scale = vec3(1.0, 1.0, 1.0),
                rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                bobUpAndDown = false, -- marker bopUpAndDown
                faceCamera = false, -- marker faceCamera
                rotation = true, -- marker rotation
                custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                }
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Hospital Heli', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissão para acessar o elevador (vazio = todo mundo)
            
            elevadorName = "Hospital Heli",

            locs = {
                {coord = vector3(-705.84,346.63,83.09), heading = 359.29, name = 'Andar 01'},
                {coord = vector3( -637.32,389.17,72.09), heading = 359.29, name = 'Garagem'},
                {coord = vector3(-673.51,326.78,140.15), heading = 359.29, name = 'Cobertura'}
            }
        },
        ['configElevador3'] = {
            type = 'elevador', -- não alterar
            input = 'elevador', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {0,255,0,75}, -- marker color (R,G,B,A)
                scale = vec3(1.0, 1.0, 1.0),
                rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                bobUpAndDown = false, -- marker bopUpAndDown
                faceCamera = false, -- marker faceCamera
                rotation = true, -- marker rotation
                custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                }
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Hospital', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissão para acessar o elevador (vazio = todo mundo)
            
            elevadorName = "Hospital",

            locs = {
                {coord = vector3(1193.14,-1473.4,34.86), heading = 359.29, name = 'Andar 01'},
                {coord = vector3(1200.9,-1483.76,44.26), heading = 359.29, name = 'Andar 02'},
                
            }
        },

        ['configElevador4'] = {
            type = 'elevador', -- não alterar
            input = 'elevador', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {0,255,0,75}, -- marker color (R,G,B,A)
                scale = vec3(1.0, 1.0, 1.0),
                rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                bobUpAndDown = false, -- marker bopUpAndDown
                faceCamera = false, -- marker faceCamera
                rotation = true, -- marker rotation
                custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                }
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Hospital', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissão para acessar o elevador (vazio = todo mundo)
            
            elevadorName = "Hospital",

            locs = {
                {coord = vector3(-1581.46,-557.94,34.95), heading = 359.29, name = 'Terreo'},
                {coord = vector3(-1581.78,-560.42,108.51), heading = 359.29, name = 'Andar 01'},
                {coord = vector3(-1561.51,-568.23,114.44), heading = 359.29, name = 'Heliponto'},
            }
        },
    },

    locs = {
        {showBlip = false, coord = vector3(-2290.39,266.02,164.47), heading = 359.29, config = 'configElevador1'},
        {showBlip = false, coord = vector3(-2276.09,346.91,174.6), heading = 359.29, config = 'configElevador1'},
        {showBlip = false, coord = vector3(-2268.48,378.57,188.75), heading = 359.29, config = 'configElevador1'},
        {showBlip = false, coord = vector3(-2309.89,352.67,178.57), heading = 359.29, config = 'configElevador1'},
        {showBlip = false, coord = vector3(-705.84,346.63,82.09), heading = 172.34, config = 'configElevador2'},
        {showBlip = false, coord = vector3(-637.32,389.17,71.09), heading = 172.34, config = 'configElevador2'},
        {showBlip = false, coord = vector3(-673.51,326.78,139.15), heading = 354.14, config = 'configElevador2'},
        {showBlip = false, coord = vector3(1193.14,-1473.4,34.86), heading = 172.34, config = 'configElevador3'},
        {showBlip = false, coord = vector3(1200.9,-1483.76,44.26), heading = 354.14, config = 'configElevador3'},

        {showBlip = false, coord = vector3(-1581.46,-557.94,34.95), heading = 172.34, config = 'configElevador4'},
        {showBlip = false, coord = vector3(-1581.78,-560.42,108.51), heading = 354.14, config = 'configElevador4'},
        {showBlip = false, coord = vector3(-1561.51,-568.23,114.44), heading = 172.34, config = 'configElevador4'},
     
    }
})