NyoModules.registerConfig({
    config = {
        ['jobBasicGeneralConfig'] = {
            garbageman = true,
            busDriver = true,
            fisherman = true,
            miner = true,

            ['garbagemanConfig'] = {
                paymentType = {
                    money = true,
                    itens = false
                },
                
                minMoney = 50,
                maxMoney = 100,
                
                paymentItensType = 1,
                --  1 = todos itens
                --  2 = item randomico,
                
                paymentItens = {
                    {item = 'laranja', min = 1, max = 2},
                },
                
                jobVehicles = {
                    [`trash`] = true,
                    [`trash2`] = true,
                },
                
                garbageCollectBlipConfig = {
                    sprite = 318,
                    colour = 1,
                    scale = 0.6,
                    routeColor = 5,
                    text = 'Coletar lixo'
                },
                
                markerConfig = { -- Configuração do marker nos pontos de coleta
                    markerId = 21,
                    markerColor = {255,0,0,50},  -- RGBA
                    markerRotationXYZ = {180.0,0.0,0.0}, -- rotation x,y,z
                    markerScale = {2.0,2.0,1.0}, --)Scale x,y,z
                    markerUpDown = true, -- marker ficar pulando
                    markerFace = true, -- marker segue a visão do player
                    markerRotation = true -- marker ficar rotacionando entre seu eixo
                },
                
                
                garbageLocations = {
                    vector3(-364.39,-1864.58,20.24),
                    vector3(119.92,-2049.79,18.00),
                    vector3(140.51,-1876.13,23.52),
                    vector3(159.26,-1814.52,28.13),
                    vector3(241.46,-1944.45,23.12),
                    vector3(447.58,-1936.93,24.31),
                    vector3(487.06,-1515.02,29.00),
                    vector3(419.46,-1526.35,28.99),
                    vector3(266.11,-1493.93,28.92),
                    vector3(120.39,-1545.78,28.95),
                    vector3(136.37,-1369.56,28.95),
                    vector3(-13.08,-1388.95,29.10),
                    vector3(482.05,-1279.73,29.25),
                    vector3(430.18,-1066.45,28.92),
                    vector3(305.60,-1038.61,28.89),
                    vector3(241.49,-831.53,29.62),
                    vector3(18.98,-544.66,36.34),
                    vector3(7.39,-366.43,40.23),
                    vector3(303.37,-259.79,53.67),
                    vector3(973.44,-158.95,73.09),
                    vector3(921.25,47.69,80.48),
                    vector3(916.12,-194.66,72.63),
                    vector3(587.96,67.51,93.18),
                    vector3(312.00,329.08,105.16),
                    vector3(-381.52,289.96,84.55),
                    vector3(-601.73,270.61,81.69),
                    vector3(-1239.73,405.86,75.35),
                    vector3(-1772.09,-478.61,39.42),
                    vector3(-1977.30,-488.59,11.45),
                    vector3(-1320.02,-1216.42,4.49),
                    vector3(-1208.72,-1411.40,3.89),
                    vector3(-1111.55,-1549.99,4.08),
                    vector3(-574.54,-857.53,25.97),
                    vector3(-352.88,-959.45,30.79),
                    vector3(49.47,-1240.88,28.94),
                    vector3(-148.22,-1296.49,30.78),
                    vector3(-333.68,-1366.33,31.01),
                    vector3(-303.08,-1538.89,26.32)
                },
            },

            ['busDriverConfig'] = {
                paymentType = {
                    money = true,
                    itens = false
                },
                
                minMoney = 300,
                maxMoney = 400,
                
                paymentItensType = 2,
                --  1 = todos itens
                --  2 = item randomico,
                
                paymentItens = {
                    {item = 'dollars', min = 50, max = 100},
                    {item = 'garbage', min = 50, max = 100},
                    {item = 'cellphone', min = 50, max = 100},
                    {item = 'radio', min = 50, max = 100},
                },
                
                blipConfig = { -- Configuração do blip nos pontos de coleta
                    blipId = 1,
                    blipColor = 5,
                    blipScale = 0.4,
                    routeColor = 5,
                },
                
                jobVehicles = {
                    [`coach`] = true,
                    [`airbus`] = true,
                    [`bus`] = true,
                },
                
                markerConfig = { -- Configuração do marker nos pontos de coleta
                    markerId = 21,
                    markerColor = {255,0,0,50},  -- RGBA
                    markerRotationXYZ = {180.0,0.0,0.0}, -- rotation x,y,z
                    markerScale = {2.0,2.0,1.0}, --)Scale x,y,z
                    markerUpDown = false, -- marker ficar pulando
                    markerFace = true, -- marker segue a visão do player
                    markerRotation = false -- marker ficar rotacionando entre seu eixo
                },
                
                route = { -- Pontos da Rota
                vector3(338.09,6561.34,28.68),
                vector3(956.35,6478.1,21.06),
                vector3(1957.28,6190.56,45.25),
                vector3(2591.6,5140.72,44.75),
                vector3(2745.19,4486.82,47.22),
                vector3(2470.65,4054.66,37.64),
                vector3(1723.92,3529.57,36.35),
                vector3(2015.93,3090.11,47.04),
                vector3(1282.64,2687.15,37.6),
                vector3(408.35,2673.33,44.17),
                vector3(-295.77,2898.73,45.51),
                vector3(-853.07,2757.61,23.18),
                vector3(-1250.17,2548.25,17.56),
                vector3(-1676.25,2441.54,28.8),
                vector3(-2247.06,2288.65,32.61),
                vector3(-2553.2,2323.26,33.06),
                vector3(-2651.9,2604.04,16.7),
                vector3(-2450.52,3732.26,16.44),
                vector3(-2205.36,4298.17,48.28),
                vector3(-1500.0,4985.06,62.69),
                vector3(-846.43,5433.22,34.37),
                vector3(-503.38,5809.55,34.69),
                vector3(-304.73,6051.66,31.41),
                vector3(-286.94,6219.03,31.43),
                vector3(-229.95,6402.92,31.33),
                vector3(-23.93,6619.41,30.49),
                vector3(137.61,6540.04,31.5),
                },
            },

            ['fishermanConfig'] = {
                paymentType = {
                    money = false,
                    itens = true
                },
                
                minMoney = 50,
                maxMoney = 100,
                
                paymentItensType = 2,
                --  1 = todos itens
                --  2 = item randomico,
                
                paymentItens = {
                    {item = 'dourado', min = 1, max = 3},
                    {item = 'corvina', min = 1, max = 1},
                    {item = 'salmao', min = 1, max = 1},
                    {item = 'pacu', min = 1, max = 3},
                    {item = 'pintado', min = 1, max = 1},
                    {item = 'pirarucu', min = 1, max = 3},
                    {item = 'tilapia', min = 1, max = 1},
                    {item = 'tucunare', min = 1, max = 3},
                },
                
                locations = {
                    {vector3(1269.5,4096.39,35.01),180.0},
                },
                
                fishingTipe = 2, -- Tipo para pescar (1 = tempo, 2 = skillbar)
                fishingTime = 5,
                
                requestItem = { require = true, item = 'isca', qtd = 1}, -- Requer algum item para pescar? Caso sim coloque TRUE e o item, caso não coloque FALSE
                
                
                markerConfig = { -- Configuração do marker nos pontos de coleta
                    markerId = 161,
                    markerColor = {255,215,0,43},  -- RGBA
                    markerRotationXYZ = {180.0,0.0,0.0}, -- rotation x,y,z
                    markerUpDown = false, -- marker ficar pulando
                    markerFace = false, -- marker segue a visão do player
                    markerRotation = false -- marker ficar rotacionando entre seu eixo
                },
                
                fisherBlipConfig = {
                    sprite = 68,
                    colour = 57,
                    scale = 0.6,
                    shortRange = false,
                    text = 'Local de Pesca'
                },
            },

            ['minerConfig'] = {
                paymentType = {
                    money = false,
                    itens = true
                },
                
                minMoney = 50,
                maxMoney = 100,
                
                paymentItensType = 2,
                --  1 = todos itens
                --  2 = item randomico,
                
                paymentItens = {
                    {item = 'bronze', min = 1, max = 1}, 
                    {item = 'ferro', min = 1, max = 1},
                    {item = 'ouro', min = 1, max = 1},
                    {item = 'rubi', min = 1, max = 1},
                    {item = 'esmeralda', min = 1, max = 1},
                    {item = 'safira', min = 1, max = 1},
                    {item = 'diamante', min = 1, max = 1},
                    {item = 'topazio', min = 1, max = 1},
                    {item = 'ametista', min = 1, max = 1},
                },
                
                timerMining = 5000,
                
                jobVehicles = {
                    [`tiptruck`] = true,
                    [`tiptruck2`] = true,
                },
                
                markerConfig = { -- Configuração do marker nos pontos de coleta
                    markerId = 21,
                    markerColor = {255,0,0,50},  -- RGBA
                    markerRotationXYZ = {180.0,0.0,0.0}, -- rotation x,y,z
                    markerScale = {1.0,1.0,1.0}, --)Scale x,y,z
                    markerUpDown = true, -- marker ficar pulando
                    markerFace = true, -- marker segue a visão do player
                    markerRotation = true -- marker ficar rotacionando entre seu eixo
                },
                
                mineLocations = {
                    vector3(-588.32,2061.52,131.0),
                    vector3(-586.39,2043.89,129.64),
                    vector3(-572.25,2023.85,127.84),
                    vector3(-563.35,2016.03,127.38),
                    vector3(-550.53,1997.26,127.24),
                    vector3(-534.92,1982.32,127.05),
                    vector3(-501.33,1978.72,125.91),
                    vector3(-539.16,1952.13,126.41),
                    vector3(-534.53,1935.46,125.17),
                },
            },
        },

        ['configJobMotorista'] = {
            type = 'job',
            jobtype = 'busdriver',
            displayName = "Onibus",
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {255,255,0,75}, -- marker color (R,G,B,A)
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
            perm = "",
            -- Map Configuration
            blip = {
                name = 'Central | Motorista de Onibus', -- Name to display on the map!
                blipId = 513, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  
        },

        -- Config do Ponto inicial do emprego de Lixeiro
        ['configJobGarbage'] = {
            type = 'job',
            jobtype = 'garbageman',
            displayName = 'Lixeiro',
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {255,255,0,75}, -- marker color (R,G,B,A)
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
            perm = "",

            -- Map Configuration
            blip = {
                name = 'Central | Lixeiro', -- Name to display on the map!
                blipId = 318, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  
        },

        -- Config do Ponto inicial do emprego de Minerador
        ['configJobMinerador'] = {
            type = 'job',
            jobtype = 'miner',
            displayName = 'Minerador',
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {255,255,0,75}, -- marker color (R,G,B,A)
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
            perm = "",

            -- Map Configuration
            blip = {
                name = 'Central | Minerador', -- Name to display on the map!
                blipId = 477, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  
        },

        -- Config do Ponto inicial do emprego de pescador 
        ['configJobPescador'] = {
            type = 'job',
            jobtype = 'fisherman',
            displayName = 'Pescador',
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {255,255,0,75}, -- marker color (R,G,B,A)
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
            perm = "",

            -- Map Configuration
            blip = {
                name = 'Central | Pescador', -- Name to display on the map!
                blipId = 68, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  
        },
    },

    locs = {
        {showBlip = true, coord = vector3(119.51,6626.82,31.96), heading = 359.29, config = 'configJobMotorista'},
        -- {showBlip = true, coord = vector3(-349.84,-1569.79,24.32), heading = 359.29, config = 'configJobGarbage'},
        {showBlip = true, coord = vector3(1054.13,-1952.76,31.29), heading = 359.29, config = 'configJobMinerador'},
        {showBlip = true, coord = vector3(1309.23,4362.01,41.55), heading = 359.29, config = 'configJobPescador'},
    }
})