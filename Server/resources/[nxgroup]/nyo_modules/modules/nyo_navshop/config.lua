NyoModules.registerConfig({
    config = {
        ['generalConfigNavShop'] = {
            illegalMoneyItem = 'dinheiro-sujer',
        },
        ['configNavShop1'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
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
                name = 'Central | Pescador (VENDA)', -- Name to display on the map!
                blipId = 408, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
                { type = 'buy', index = 'isca', name = 'Isca 1x', typeMoney = 'legal', price = 6, qtd = 1 },
                { type = 'buy', index = 'isca', name = 'Isca 10x', typeMoney = 'legal', price = 50, qtd = 10 },
                { type = 'sell', index = 'dourado', name = 'Dourado', typeMoney = 'legal', price = 90},
                { type = 'sell', index = 'corvina', name = 'Corvina', typeMoney = 'legal', price = 65},
                { type = 'sell', index = 'salmao', name = 'Salmao', typeMoney = 'legal', price = 30},
                { type = 'sell', index = 'pacu', name = 'Pacu', typeMoney = 'legal', price = 60},
                { type = 'sell', index = 'pintado', name = 'Pintado', typeMoney = 'legal', price = 80 },
                { type = 'sell', index = 'pirarucu', name = 'Pirarucu', typeMoney = 'legal', price = 60},
                { type = 'sell', index = 'tilapia', name = 'Tilapia', typeMoney = 'legal', price = 120},
                { type = 'sell', index = 'tucunare', name = 'Tucunare', typeMoney = 'legal', price = 60},
            }
        },
        ['configNavShop2'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
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
                name = 'Central | Minerador (VENDA)', -- Name to display on the map!
                blipId = 408, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
                { type = 'sell', index = 'bronze', name = 'Bronze', typeMoney = 'legal', price = 550},
                { type = 'sell', index = 'ferro', name = 'Ferro', typeMoney = 'legal', price = 458},
                { type = 'sell', index = 'ouro', name = 'Ouro', typeMoney = 'legal', price = 480},
                { type = 'sell', index = 'rubi', name = 'Rubi', typeMoney = 'legal', price = 471},
                { type = 'sell', index = 'esmeralda', name = 'Esmeralda', typeMoney = 'legal', price = 390},
                { type = 'sell', index = 'safira', name = 'Safira', typeMoney = 'legal', price = 570},
                { type = 'sell', index = 'diamante', name = 'Diamante', typeMoney = 'legal', price = 600},
                { type = 'sell', index = 'topazio', name = 'Topazio', typeMoney = 'legal', price = 495},
                { type = 'sell', index = 'ametista', name = 'Ametista', typeMoney = 'legal', price = 420},
            }
        },
        ['configMergulhador'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
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
                name = 'Central | Mergulhador (VENDA)', -- Name to display on the map!
                blipId = 408, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
                { type = 'sell', index = 'celular', name = 'celular', typeMoney = 'legal', price = 200},
                { type = 'sell', index = 'perola', name = 'perola', typeMoney = 'legal', price = 200},
                { type = 'sell', index = 'relogio', name = 'relogio', typeMoney = 'legal', price = 200},
                { type = 'sell', index = 'alianca', name = 'alianca', typeMoney = 'legal', price = 80},
                { type = 'sell', index = 'pneus', name = 'pneus', typeMoney = 'legal', price = 200},
            }
        },
        ['configGunsShop'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
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
                name = 'Guns Shop', -- Name to display on the map!
                blipId = 408, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "armas.permissao", -- permissao para acessar o blip   
            shopConfig = {             
                { type = 'buy', index = 'molas', name = 'Molas', typeMoney = 'legal', price = 8000, qtd = 1 },
                { type = 'buy', index = 'gatilho', name = 'Gatilho', typeMoney = 'legal', price = 12000, qtd = 1 },
                { type = 'buy', index = 'placa-metal', name = 'Placa de metal', typeMoney = 'legal', price = 14000, qtd = 1 },
            }
        },
        ['configNavShop4'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
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
                name = 'Ammunation', -- Name to display on the map!
                blipId = 76, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
                { type = 'buy', index = 'wbody|WEAPON_BAT', name = 'Taco', typeMoney = 'legal', price = 80000, qtd = 1},
                { type = 'buy', index = 'wbody|WEAPON_FLASHLIGHT', name = 'Lanterna', typeMoney = 'legal', price = 80000, qtd = 1},
                { type = 'buy', index = 'wbody|WEAPON_KNUCKLE', name = 'Soco Ingles', typeMoney = 'legal', price = 80000, qtd = 1},
                { type = 'buy', index = 'wbody|WEAPON_POOLCUE', name = 'Taco de Sinuca', typeMoney = 'legal', price = 80000, qtd = 1},
                { type = 'buy', index = 'wbody|GADGET_PARACHUTE', name = 'Paraquedas', typeMoney = 'legal', price = 15000, qtd = 1},
                -- { type = 'buy', index = 'wbody|WEAPON_DAGGER', name = 'Adagas', typeMoney = 'legal', price = 40000, qtd = 1},
                -- { type = 'buy', index = 'wbody|WEAPON_KNIFE', name = 'Faca', typeMoney = 'legal', price = 40000, qtd = 1},
                -- { type = 'buy', index = 'wbody|WEAPON_PETROLCAN', name = 'Combustível', typeMoney = 'legal', price = 5000, qtd = 500},
            }
        },
        ['configNavShopLixeiro'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
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
                name = 'Central | Lixeiro (VENDA)', -- Name to display on the map!
                blipId = 365, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
                { type = 'sell', index = 'jogodepneu', name = 'Jogo De Pneu', typeMoney = 'legal',price = 80},
                { type = 'sell', index = 'alianca', name = 'Aliança', typeMoney = 'legal', price = 80 },
                { type = 'sell', index = 'sacoplastico', name = 'Saco de Plástico', typeMoney = 'legal',price = 80 },
                { type = 'sell', index = 'oculos', name = 'Óculos', typeMoney = 'legal',price = 80},
                { type = 'sell', index = 'telefonedescartavel', name = 'Telefone Descartável', typeMoney = 'legal', price = 80},
            }
        },
        ['configNavShopFarm'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
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
                name = 'Central | Fazendeiro (VENDA)', -- Name to display on the map!
                blipId = 85, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
                { type = 'buy', index = 'garrafavazia', name = 'Garrafa Vazia X10', typeMoney = 'legal', price = 500, qtd = 10 },
                { type = 'sell', index = 'garrafadeleite', name = 'Garrafa de Leite', typeMoney = 'legal', price = 390},
                { type = 'sell', index = 'laranja', name = 'Laranja', typeMoney = 'legal', price = 232},
                { type = 'sell', index = 'graos', name = 'Grãos', typeMoney = 'legal', price = 210},
                { type = 'sell', index = 'tomate', name = 'Tomate', typeMoney = 'legal', price = 160},
            }
        },

        ['configNavRoubosVenda'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
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
                name = 'Roubos (VENDA)', -- Name to display on the map!
                blipId = 365, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
                { type = 'sell', index = 'anelroubado', name = 'Anel Roubado', typeMoney = 'legal',price = 140},
                { type = 'sell', index = 'brincoroubado', name = 'Brinco Roubado', typeMoney = 'legal', price = 110 },
                { type = 'sell', index = 'colarroubado', name = 'Colar Roubado', typeMoney = 'legal',price = 100 },
                { type = 'sell', index = 'sapatosroubado', name = 'Sapatos Roubado', typeMoney = 'legal',price = 80},
                { type = 'sell', index = 'relogioroubado', name = 'Relógio Roubado', typeMoney = 'legal', price = 150},
                { type = 'sell', index = 'tabletroubado', name = 'Tablet Roubado', typeMoney = 'legal', price = 200},
            }
        },
        ['configNavShopPolicia'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
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
                name = 'Policia Porte', -- Name to display on the map!
                blipId = 76, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "comandante.permissao", -- permissao para acessar o blip   
            shopConfig = {             
                { type = 'buy', index = 'wbody|WEAPON_PISTOL', name = 'M19', typeMoney = 'legal', price = 60000, qtd = 1},
                { type = 'buy', index = 'wammo|WEAPON_PISTOL', name = 'M.M19', typeMoney = 'legal', price = 1, qtd = 250},
                { type = 'buy', index = 'wbody|WEAPON_HEAVYPISTOL', name = 'Heavy Pistol', typeMoney = 'legal', price = 60000, qtd = 1},
                { type = 'buy', index = 'wammo|WEAPON_HEAVYPISTOL', name = 'M. Heavy Pistol', typeMoney = 'legal', price = 1, qtd = 250},
            }
        },
        ['configNavShop5'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
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
                name = 'Loja de Departamento', -- Name to display on the map!
                blipId = 59, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
                { type = 'buy', index = 'celular', name = 'Celular', typeMoney = 'legal', price = 3000, qtd = 1 },
                { type = 'buy', index = 'radio', name = 'Rádio', typeMoney = 'legal', price = 1000, qtd = 1 },
                { type = 'buy', index = 'galao', name = 'Galão', typeMoney = 'legal', price = 1000, qtd = 1 },
                { type = 'buy', index = 'roupas', name = 'Roupas', typeMoney = 'legal', price = 15000, qtd = 1 },
                -- { type = 'buy', index = 'corda', name = 'Corda', typeMoney = 'legal', price = 30000, qtd = 1 },
                { type = 'buy', index = 'militec', name = 'Militec', typeMoney = 'legal', price = 5000, qtd = 1 },
                { type = 'buy', index = 'repairkit', name = 'Kit de Reparos', typeMoney = 'legal', price = 10000, qtd = 1 },
                -- { type = 'buy', index = 'pneus', name = 'Pneu para Reparo', typeMoney = 'legal', price = 2500, qtd = 1 },
                { type = 'buy', index = 'mochila', name = 'Mochila', typeMoney = 'legal', price = 10000, qtd = 1 },
                { type = 'buy', index = 'alianca', name = 'Aliança', typeMoney = 'legal', price = 10000, qtd = 1 },
                { type = 'buy', index = 'cerveja', name = 'Cerveja', typeMoney = 'legal', price = 100, qtd = 1 },
                { type = 'buy', index = 'tequila', name = 'Tequila', typeMoney = 'legal', price = 100, qtd = 1 },
                { type = 'buy', index = 'vodka', name = 'Vodka', typeMoney = 'legal', price = 100, qtd = 1 },
                { type = 'buy', index = 'whisky', name = 'Whisky', typeMoney = 'legal', price = 100, qtd = 1 },
                { type = 'buy', index = 'conhaque', name = 'Conhaque', typeMoney = 'legal', price = 100, qtd = 1 },
                { type = 'buy', index = 'absinto', name = 'Absinto', typeMoney = 'legal', price = 100, qtd = 1 },
                { type = 'buy', index = 'energetico', name = 'Energético 3x', typeMoney = 'legal', price = 3000, qtd = 3 },
                { type = 'buy', index = 'jogodepneu', name = 'Jogo de Pneu', typeMoney = 'legal', price = 200, qtd = 1 },
            }
        },

        ['configNavShopBebidas'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
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
                name = 'Loja de Bebidas', -- Name to display on the map!
                blipId = 76, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
                { type = 'buy', index = 'cerveja', name = 'Cerveja', typeMoney = 'legal', price = 100, qtd = 1 },
                { type = 'buy', index = 'tequila', name = 'Tequila', typeMoney = 'legal', price = 100, qtd = 1 },
                { type = 'buy', index = 'vodka', name = 'Vodka', typeMoney = 'legal', price = 100, qtd = 1 },
                { type = 'buy', index = 'whisky', name = 'Whisky', typeMoney = 'legal', price = 100, qtd = 1 },
                { type = 'buy', index = 'conhaque', name = 'Conhaque', typeMoney = 'legal', price = 100, qtd = 1 },
                { type = 'buy', index = 'absinto', name = 'Absinto', typeMoney = 'legal', price = 100, qtd = 1 },
            }
        },

        ['configNavShopCoin'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
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
                name = 'Loja de Coin', -- Name to display on the map!
                blipId = 76, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
                { type = 'buy', index = 'leleystorecoin', name = 'Coin', typeMoney = 'legal', price = 1000, qtd = 1000 },
                { type = 'sell', index = 'leleystorecoin', name = 'Coin', typeMoney = 'legal', price = 1},
            }
        },
    },

    locs = {
        {showBlip = true, coord = vector3(1292.05,4366.98,41.34), heading = 359.29, config = 'configNavShop1'},
        {showBlip = true, coord = vector3(286.98,2843.42,44.71), heading = 359.29, config = 'configNavShop2'},
        {showBlip = true, coord = vector3(21.14,-1106.41,29.8), heading = 359.29, config = 'configNavShop4'},
        {showBlip = true, coord = vector3(252.81,-49.4,69.95), heading = 359.29, config = 'configNavShop4'},
        {showBlip = true, coord = vector3(843.05,-1033.93,28.2), heading = 359.29, config = 'configNavShop4'},
        {showBlip = true, coord = vector3(-331.15,6083.53,31.46), heading = 359.29, config = 'configNavShop4'},
        {showBlip = true, coord = vector3(-663.28,-934.92,21.83), heading = 359.29, config = 'configNavShop4'},
        {showBlip = true, coord = vector3(-1305.2,-393.35,36.7), heading = 359.29, config = 'configNavShop4'},
        {showBlip = true, coord = vector3(-1118.82,2698.08,18.56), heading = 359.29, config = 'configNavShop4'},
        {showBlip = true, coord = vector3(2568.96,293.99,108.74), heading = 359.29, config = 'configNavShop4'},
        {showBlip = true, coord = vector3(-3172.62,1087.11,20.84), heading = 359.29, config = 'configNavShop4'},
        {showBlip = true, coord = vector3(1692.43,3759.14,34.71), heading = 359.29, config = 'configNavShop4'},
        {showBlip = true, coord = vector3(811.29,-2157.67,29.62), heading = 359.29, config = 'configNavShop4'},
        {showBlip = true, coord = vector3(25.65,-1346.58,29.49), heading = 359.29, config = 'configNavShop5'},
        {showBlip = true, coord = vector3(2556.75,382.01,108.62), heading = 359.29, config = 'configNavShop5'},
        {showBlip = true, coord = vector3(1163.54,-323.04,69.20), heading = 359.29, config = 'configNavShop5'},
        {showBlip = true, coord = vector3(-707.37,-913.68,19.21), heading = 359.29, config = 'configNavShop5'},
        {showBlip = true, coord = vector3(-47.73,-1757.25,29.42), heading = 359.29, config = 'configNavShop5'},
        {showBlip = true, coord = vector3(373.90,326.91,103.56), heading = 359.29, config = 'configNavShop5'},
        {showBlip = true, coord = vector3(-3243.10,1001.23,12.83), heading = 359.29, config = 'configNavShop5'},
        {showBlip = true, coord = vector3(1729.38,6415.54,35.03), heading = 359.29, config = 'configNavShop5'},
        {showBlip = true, coord = vector3(547.90,2670.36,42.15), heading = 359.29, config = 'configNavShop5'},
        {showBlip = true, coord = vector3(1960.75,3741.33,32.34), heading = 359.29, config = 'configNavShop5'},
        {showBlip = true, coord = vector3(2677.90,3280.88,55.24), heading = 359.29, config = 'configNavShop5'},
        {showBlip = true, coord = vector3(1698.45,4924.15,42.06), heading = 359.29, config = 'configNavShop5'},
        {showBlip = true, coord = vector3(-1820.93,793.18,138.11), heading = 359.29, config = 'configNavShop5'},
        {showBlip = true, coord = vector3(1392.46,3604.95,34.98), heading = 359.29, config = 'configNavShop5'},
        {showBlip = true, coord = vector3(-2967.82,390.93,15.04), heading = 359.29, config = 'configNavShop5'},
        {showBlip = true, coord = vector3(-3040.10,585.44,7.90), heading = 359.29, config = 'configNavShop5'},
        {showBlip = true, coord = vector3(1135.56,-982.20,46.41), heading = 359.29, config = 'configNavShop5'},
        {showBlip = true, coord = vector3(1165.91,2709.41,38.15), heading = 359.29, config = 'configNavShop5'},
        {showBlip = true, coord = vector3(4467.27,-4465.29,4.25), heading = 359.29, config = 'configNavShop5'},
        {showBlip = true, coord = vector3(-1487.18,-379.02,40.16), heading = 359.29, config = 'configNavShop5'},
        {showBlip = true, coord = vector3(-1222.78,-907.22,12.32), heading = 359.29, config = 'configNavShop5'},
        {showBlip = true, coord = vector3(290.25,2836.65,43.51), heading = 359.29, config = 'configNavShopLixeiro'},
        {showBlip = true, coord = vector3(1590.54,6457.9,26.02), heading = 359.29, config = 'configNavShopFarm'},
        {showBlip = true, coord = vector3(-1816.64,-1194.05,14.31), heading = 359.29, config = 'configMergulhador'},
        {showBlip = false, coord = vector3(2577.83,3164.67,50.25), heading = 359.29, config = 'configGunsShop'},
        {showBlip = false, coord = vector3(-2288.49,344.79,174.6), heading = 359.29, config = 'configNavShopPolicia'},
        {showBlip = false, coord = vector3(1275.59,-1710.25,54.78), heading = 359.29, config = 'configNavRoubosVenda'},

        {showBlip = false, coord = vector3(-598.74,-895.2,17.37), heading = 359.29, config = 'configNavShopBebidas'},
        {showBlip = false, coord = vector3(80.94,166.09,83.8), heading = 359.29, config = 'configNavShopBebidas'},
        {showBlip = false, coord = vector3(4905.02,-4943.44,3.38), heading = 359.29, config = 'configNavShopBebidas'},
        {showBlip = false, coord = vector3(4761.94,-4895.87,2.01), heading = 359.29, config = 'configNavShopBebidas'},

        {showBlip = false, coord = vector3(1110.29,208.1,-49.44), heading = 359.29, config = 'configNavShopBebidas'},
        {showBlip = false, coord = vector3(947.61,14.26,116.17), heading = 359.29, config = 'configNavShopBebidas'},
        {showBlip = false, coord = vector3(958.95,71.51,112.56), heading = 359.29, config = 'configNavShopBebidas'},

        {showBlip = false, coord = vector3(1116.1,219.99,-49.44), heading = 359.29, config = 'configNavShopCoin'},

    }
})