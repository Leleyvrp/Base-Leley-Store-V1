NyoModules.registerConfig({
    config = {
        ['configSkinShopAll'] = {
            type = 'skinShop', -- não alterar
            input = 'skinshop', -- não alterar
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
                name = 'Loja de Roupas', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip
            shopType = "all", -- all (show all clouth), exclusive (displays only the set clothes), exclude (excludes set clothing)
            hidePlayers = true,
            shopConfig = {
                [1] = {price = 500, item = {Male = {}, Female = {}}}, -- mascara
                [3] = {price = 500, item = {Male = {}, Female = {}}}, -- maos
                [4] = {price = 500, item = {Male = {}, Female = {}}}, -- calca
                [5] = {price = 500, item = {Male = {}, Female = {}}}, -- mochila
                [6] = {price = 500, item = {Male = {}, Female = {}}}, -- sapato
                [7] = {price = 500, item = {Male = {}, Female = {}}}, -- gravata
                [8] = {price = 500, item = {Male = {}, Female = {}}}, -- camisa
                [9] = {price = 500, item = {Male = {}, Female = {}}}, -- colete
                [10] = {price = 500, item = {Male = {}, Female = {}}}, -- decals (adesivos)
                [11] = {price = 500, item = {Male = {}, Female = {}}}, -- jaqueta
                ['p0'] = {price = 500, item = {Male = {}, Female = {}}}, -- bone/chapeu
                ['p1'] = {price = 500, item = {Male = {}, Female = {}}}, -- oculos
                ['p2'] = {price = 500, item = {Male = {}, Female = {}}}, -- brinco
                ['p6'] = {price = 500, item = {Male = {}, Female = {}}}, -- relogio
                ['p7'] = {price = 500, item = {Male = {}, Female = {}}}, -- bracelete
            }    
        },

        ['configSkinShopExlude'] = {
            type = 'skinShop', -- não alterar
            input = 'skinshop', -- não alterar
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
                name = 'Loja de Roupas', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip
            shopType = "exclude", -- all (show all clouth), exclusive (displays only the set clothes), exclude (excludes set clothing)
            hidePlayers = true,
            shopConfig = {
                [1] = {price = 500, item = {Male = {1,2,3,4,5,6,7,8,9,10}, Female = {}}}, -- mascara
                [3] = {price = 500, item = {Male = {}, Female = {}}}, -- maos
                [4] = {price = 500, item = {Male = {}, Female = {}}}, -- calca
                [5] = {price = 500, item = {Male = {}, Female = {}}}, -- mochila
                [6] = {price = 500, item = {Male = {}, Female = {}}}, -- sapato
                [7] = {price = 500, item = {Male = {}, Female = {}}}, -- gravata
                [8] = {price = 500, item = {Male = {}, Female = {}}}, -- camisa
                [9] = {price = 500, item = {Male = {}, Female = {}}}, -- colete
                [10] = {price = 500, item = {Male = {}, Female = {}}}, -- decals (adesivos)
                [11] = {price = 500, item = {Male = {}, Female = {}}}, -- jaqueta
                ['p0'] = {price = 500, item = {Male = {}, Female = {}}}, -- bone/chapeu
                ['p1'] = {price = 500, item = {Male = {}, Female = {}}}, -- oculos
                ['p2'] = {price = 500, item = {Male = {}, Female = {}}}, -- brinco
                ['p6'] = {price = 500, item = {Male = {}, Female = {}}}, -- relogio
                ['p7'] = {price = 500, item = {Male = {}, Female = {}}}, -- bracelete
            }    
        },

        ['configSkinShopExclusive'] = {
            type = 'skinShop', -- não alterar
            input = 'skinshop', -- não alterar
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
                name = 'Loja de Roupas', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip
            shopType = "exclusive", -- all (show all clouth), exclusive (displays only the set clothes), exclude (excludes set clothing)
            hidePlayers = true,
            shopConfig = {
                [1] = {price = 500, item = {Male = {1,2,3,4,5,6,7,8,9,10}, Female = {}}}, -- mascara
                [3] = {price = 500, item = {Male = {}, Female = {}}}, -- maos
                [4] = {price = 500, item = {Male = {}, Female = {}}}, -- calca
                [5] = {price = 500, item = {Male = {}, Female = {}}}, -- mochila
                [6] = {price = 500, item = {Male = {}, Female = {}}}, -- sapato
                [7] = {price = 500, item = {Male = {}, Female = {}}}, -- gravata
                [8] = {price = 500, item = {Male = {}, Female = {}}}, -- camisa
                [9] = {price = 500, item = {Male = {}, Female = {}}}, -- colete
                [10] = {price = 500, item = {Male = {}, Female = {}}}, -- decals (adesivos)
                [11] = {price = 500, item = {Male = {}, Female = {}}}, -- jaqueta
                ['p0'] = {price = 500, item = {Male = {}, Female = {}}}, -- bone/chapeu
                ['p1'] = {price = 500, item = {Male = {}, Female = {}}}, -- oculos
                ['p2'] = {price = 500, item = {Male = {}, Female = {}}}, -- brinco
                ['p6'] = {price = 500, item = {Male = {}, Female = {}}}, -- relogio
                ['p7'] = {price = 500, item = {Male = {}, Female = {}}}, -- bracelete
            }    
        },

        ['configSkinShopPerm'] = {
            type = 'skinShop', -- não alterar
            input = 'skinshop', -- não alterar
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
                name = 'Loja de Roupas', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "policia.permissao", -- permissao para acessar o blip
            shopType = "all", -- all (show all clouth), exclusive (displays only the set clothes), exclude (excludes set clothing)
            hidePlayers = true,
            shopConfig = {
                [1] = {price = 500, item = {Male = {}, Female = {}}}, -- mascara
                [3] = {price = 500, item = {Male = {}, Female = {}}}, -- maos
                [4] = {price = 500, item = {Male = {}, Female = {}}}, -- calca
                [5] = {price = 500, item = {Male = {}, Female = {}}}, -- mochila
                [6] = {price = 500, item = {Male = {}, Female = {}}}, -- sapato
                [7] = {price = 500, item = {Male = {}, Female = {}}}, -- gravata
                [8] = {price = 500, item = {Male = {}, Female = {}}}, -- camisa
                [9] = {price = 500, item = {Male = {}, Female = {}}}, -- colete
                [10] = {price = 500, item = {Male = {}, Female = {}}}, -- decals (adesivos)
                [11] = {price = 500, item = {Male = {}, Female = {}}}, -- jaqueta
                ['p0'] = {price = 500, item = {Male = {}, Female = {}}}, -- bone/chapeu
                ['p1'] = {price = 500, item = {Male = {}, Female = {}}}, -- oculos
                ['p2'] = {price = 500, item = {Male = {}, Female = {}}}, -- brinco
                ['p6'] = {price = 500, item = {Male = {}, Female = {}}}, -- relogio
                ['p7'] = {price = 500, item = {Male = {}, Female = {}}}, -- bracelete
            }    
        },
    },

    locs = {
        -- Loja de Roupa 1
        {showBlip = true, coord = vector3(70.75,-1397.77,28.39), heading = 173.11, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(72.32,-1397.77,28.39), heading = 173.11, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(73.73,-1397.77,28.39), heading = 173.11, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(75.37,-1397.77,28.39), heading = 173.11, config = 'configSkinShopAll'},

        -- Loja de Roupa 2
        {showBlip = true, coord = vector3(430.1,-799.67,28.52), heading = 177.1, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(428.62,-799.67,28.52), heading = 173.11, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(427.06,-799.67,28.52), heading = 192.52, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(425.62,-799.67,28.52), heading = 181.76, config = 'configSkinShopAll'},

        -- Loja de Roupa 3

        {showBlip = true, coord = vector3( 122.71,-210.59,53.56), heading = 255.1, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3( 122.17,-213.23,53.56), heading = 255.1, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3( 121.57,-214.82,53.56), heading = 255.1, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3( 120.85,-216.69,53.56), heading = 255.1, config = 'configSkinShopAll'},

        -- Loja de Roupa 4
        {showBlip = true, coord = vector3(-165.9,-310.94,38.74), heading = 248.85, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-165.6,-309.52,38.74), heading = 251.32, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-165.09,-308.15,38.74), heading = 213.57, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-164.74,-306.74,38.74), heading = 286.29, config = 'configSkinShopAll'},

        -- Loja de Roupa 5
        {showBlip = true, coord = vector3(-830.4,-1072.88,10.33), heading = 292.33, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-829.63,-1074.25,10.33), heading = 311.26, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-828.85,-1075.51,10.33), heading = 304.74, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-828.07,-1076.79,10.33), heading = 312.29, config = 'configSkinShopAll'},

        -- Loja de Roupa 6
        {showBlip = true, coord = vector3(-714.24,-145.74,36.42), heading = 141.83, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-713.1,-147.37,36.42), heading = 141.83, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-712.46,-148.6,36.42), heading = 141.83, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-711.74,-149.56,36.42), heading = 178.12, config = 'configSkinShopAll'},

        -- Loja de Roupa 7
        {showBlip = true, coord = vector3(-1198.0,-769.28,16.32), heading = 222.52, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-1199.6,-770.57,16.32), heading = 217.49, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-1201.26,-771.96,16.32), heading = 179.08, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-1202.65,-773.12,16.32), heading = 214.11, config = 'configSkinShopAll'},

        -- Loja de Roupa 8
        {showBlip = true, coord = vector3(-1458.89,-239.82,48.81), heading = 276.58, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-1457.59,-240.72,48.81), heading = 276.58, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-1456.06,-242.04,48.81), heading = 276.58, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-1455.33,-243.65,48.81), heading = 276.58, config = 'configSkinShopAll'},

        -- Loja de Roupa 9
        {showBlip = true, coord = vector3(-3171.89,1057.23,19.90), heading = 252.57, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-3173.07,1055.85,19.90), heading = 252.57, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-3173.7,1053.83,19.90), heading = 252.57, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-3175.06,1050.95,19.90), heading = 252.57, config = 'configSkinShopAll'},

        -- Loja de Roupa 10
        {showBlip = true, coord = vector3(-1109.44,2709.55,18.11), heading = 311.52, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-1108.37,2708.43,18.11), heading = 314.75, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-1107.43,2707.32,18.11), heading = 307.39, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-1106.33,2706.17,18.11), heading = 325.3, config = 'configSkinShopAll'},

        -- Loja de Roupa 11
        {showBlip = true, coord = vector3(612.87,2758.49,41.09), heading = 292.48, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(613.12,2756.56,41.09), heading = 283.19, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(613.13,2753.29,41.09), heading = 264.95, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(613.26,2751.39,41.09), heading = 280.25, config = 'configSkinShopAll'},

        -- Loja de Roupa 12
        {showBlip = true, coord = vector3(1190.08,2714.76,37.23), heading = 267.87, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(1190.18,2713.24,37.23), heading = 276.04, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(1190.09, 2711.73,37.23), heading = 280.45, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(1190.07,2710.23,37.23), heading = 283.45, config = 'configSkinShopAll'},

        -- Loja de Roupa 13
        {showBlip = true, coord = vector3(1697.49,4829.94,41.07), heading = 179.54, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(1695.95,4829.75,41.07), heading = 201.35, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(1694.54,4829.57,41.07), heading = 186.38, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(1693.04,4829.35,41.07), heading = 190.91, config = 'configSkinShopAll'},

        -- Loja de Roupa 14
        {showBlip = true, coord = vector3(12.7,6513.6,30.878), heading = 134.57, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(11.7,6514.76,30.878), heading = 134.28, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(10.74,6515.8,30.878), heading = 138.6, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(9.66,6516.88,30.878), heading = 150.98, config = 'configSkinShopAll'},
        -- Loja de Roupa 15
        {showBlip = false, coord = vector3(1150.32,-1583.11,35.3), heading = 134.57, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(1150.29,-1589.66,35.3), heading = 134.57, config = 'configSkinShopAll'},
        --{showBlip = false, coord = vector3(2513.8,-343.56,101.9), heading = 134.57, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-437.09,-308.66,34.92), heading = 134.57, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-1511.77,-3014.43,-79.24), heading = 355.70, config = 'configSkinShopAll'},

        -- Loja de medico 17
        {showBlip = false, coord = vector3(-662.65,319.81,82.09), heading = 82.106, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-662.32,317.25,82.09), heading = 82.106, config = 'configSkinShopAll'},

        -- Loja de Bombeiro 18
        {showBlip = false, coord = vector3(198.63,-1646.7,28.81), heading = 235.02, config = 'configSkinShopAll'},
        -- Loja de mecanica 19
        {showBlip = false, coord = vector3(2742.27,3505.45,60.31), heading = 16.72, config = 'configSkinShopAll'},
        
         -- Loja de BOPE 20
        --{showBlip = false, coord = vector3(819.69,151.86,89.95), heading = 58.72, config = 'configSkinShopAll'},
         -- Loja de MILITAR 21
        {showBlip = false, coord = vector3(687.95,256.19,98.34), heading = 58.72, config = 'configSkinShopAll'},
         -- Loja de MILITAR 22
        {showBlip = false, coord = vector3(624.97,4.23,76.63), heading = 58.72, config = 'configSkinShopAll'},
         -- Loja de redline 23
        {showBlip = false, coord = vector3(-602.0,-914.24,22.89), heading = 176.97, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-604.13,-913.94,23.89), heading = 176.97, config = 'configSkinShopAll'},

        {showBlip = false, coord = vector3(144.15,100.5,83.52), heading = 104.41, config = 'configSkinShopAll'},
         -- Loja de juiz 23
        {showBlip = false, coord = vector3(2526.16,-443.6,106.92), heading = 22.01, config = 'configSkinShopAll'},

        {showBlip = false, coord = vector3(1096.61,201.86,-49.44), heading = 22.01, config = 'configSkinShopAll'},

        {showBlip = false, coord = vector3(-1095.73,-833.59,14.27), heading = 22.01, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(1020.24,-2339.77,35.08), heading = 22.01, config = 'configSkinShopAll'},
 
    },

    commands = {
       -- {showBlip = true, coords = { {vec3(89.606704711914,-1393.6149902344,29.21325302124), 5.0}, {vec3(104.64386749268,-1400.646484375,29.263059616089), 5.0} }, command = "openSkinshop", config = 'configSkinShopAll'},
    }
})