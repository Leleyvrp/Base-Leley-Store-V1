NyoModules.registerConfig({
    config = {
        ['configBarberShopAll'] = {
            type = 'barberShop', -- não alterar
            input = 'barberShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {255,0,0,75}, -- marker color (R,G,B,A)
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
                name = 'Cabelereiro', -- Name to display on the map!
                blipId = 71, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 4, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissão para acessar o blip
            shopType = "all", -- all (show all clouth), exclusive (displays only the set clothes), exclude (excludes set clothing)
            hidePlayers = true,
            shopConfig = {
                [0] = {price = 500, item = {Male = {}, Female = {}}}, -- Defeitos
                [1] = {price = 500, item = {Male = {}, Female = {}}}, -- Barba
                [2] = {price = 500, item = {Male = {}, Female = {}}}, -- Sombrancelha
                [3] = {price = 500, item = {Male = {}, Female = {}}}, -- Envelhecimento
                [4] = {price = 500, item = {Male = {}, Female = {}}}, -- Maquiagem
                [5] = {price = 500, item = {Male = {}, Female = {}}}, -- Blush
                [6] = {price = 500, item = {Male = {}, Female = {}}}, -- Rugas
                [8] = {price = 500, item = {Male = {}, Female = {}}}, -- Batom
                [9] = {price = 500, item = {Male = {}, Female = {}}}, -- Sardas
                [10] = {price = 500, item = {Male = {}, Female = {}}}, -- Cabelo no Peito
                [11] = {price = 500, item = {Male = {}, Female = {}}}, -- Manchas no Corpo
                [12] = {price = 500, item = {Male = {}, Female = {}}}, -- Cabelo
                [13] = {price = 500, item = {Male = {}, Female = {}}}, -- Cor Sec. do Cabelo
            }    
        },
    },

    locs = {
        {showBlip = true, coord = vector3(-815.59,-182.16,36.66), heading = 204.29, config = 'configBarberShopAll'},
        {showBlip = true, coord = vector3(-1282.00,-1119.18,6.01), heading = 7.00, config = 'configBarberShopAll'},
        {showBlip = true, coord = vector3(1933.86,3730.77,31.86), heading = 124.95, config = 'configBarberShopAll'},
        {showBlip = true, coord = vector3(1211.08,-474.79,65.22), heading = 345.26, config = 'configBarberShopAll'},
        {showBlip = true, coord = vector3(-34.87,-150.98,56.09), heading = 250.26, config = 'configBarberShopAll'},
        {showBlip = true, coord = vector3(-280.37,6227.01,30.71), heading = 321.81, config = 'configBarberShopAll'},
        {showBlip = true, coord = vector3(138.19,-1710.06,28.31), heading = 58.26, config = 'configBarberShopAll'},
        {showBlip = false, coord = vector3(-1510.12,-3014.42,-79.24), heading = 360.0, config = 'configBarberShopAll'},
        {showBlip = false, coord = vector3(-1516.73,-3015.98,-79.24), heading = 360.0, config = 'configBarberShopAll'},
        {showBlip = false, coord = vector3(-817.31,-183.05,36.57), heading = 204.29, config = 'configBarberShopAll'},
        {showBlip = false, coord = vector3(-813.64,-181.22,36.57), heading = 204.29, config = 'configBarberShopAll'},
        {showBlip = false, coord = vector3(139.19,-1709.06,28.31), heading = 58.26, config = 'configBarberShopAll'},
        {showBlip = false, coord = vector3(-1283.53,-1119.18,6.01), heading = 7.00, config = 'configBarberShopAll'},
        {showBlip = false, coord = vector3(1933.23,3732.09,31.86), heading = 124.95, config = 'configBarberShopAll'},
        {showBlip = false, coord = vector3(1212.59,-474.94,65.22), heading = 345.26, config = 'configBarberShopAll'},
        {showBlip = false, coord = vector3(-35.35,-152.34,56.09), heading = 250.26, config = 'configBarberShopAll'},
        {showBlip = false, coord = vector3(-279.31,6225.9,30.71), heading = 321.81, config = 'configBarberShopAll'},
    },

    commands = {
        --{showBlip = true, coord = vector3(-815.59,-182.16,36.66), raio = 100, command = "openBarberShop", config = 'configBarberShopAll'},
    }
})