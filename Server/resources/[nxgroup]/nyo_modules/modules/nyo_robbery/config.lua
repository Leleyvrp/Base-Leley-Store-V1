NyoModules.registerConfig({
    config = {

        ['robberyGeneralConfig'] = {
            policePermission = 'policia.permissao'
        },

        ['configRobberyAtm'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para iniciar o roubo 


            qtdPolice = 3, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo a Caixa eletronico!! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'keycard', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 70, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Registradora', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 500, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 20000, max = 35000}
            }
        },

        ['configPortaAvioes'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = { 104,104,147,255 }, -- marker color (R,G,B,A)
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
            actionKey = 47,
            -- Map Configuration
            blip = {
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo


            qtdPolice = 10, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'PortaAvioes! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'c4', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 180, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'PortaAvioes', -- nome que sera levado em conta para o StandBy
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 48000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 9000000, max = 12000000}
            }
        },
        
        ['configRobberyAmmu'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 2, -- marker id = https://docs.fivem.net/docs/game-references/markers/
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para iniciar o roubo 


            qtdPolice = 3, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo a Ammunation! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'keycard', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 70, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Ammunation', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 500, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 1, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 7000, max = 18000},
                {item = 'WEAPON_SNSPISTOL', min = 0, max = 1},
                {item = 'dinheiro-sujer', min = 3000, max = 8000},
                {item = 'dinheiro-sujer', min = 7000, max = 13000},
                {item = 'WEAPON_KNUCKLE', min = 0, max = 1},
                {item = 'dinheiro-sujer', min = 2000, max = 8000},
                {item = 'dinheiro-sujer', min = 7000, max = 20000},
                {item = 'WEAPON_FLASHLIGHT', min = 0, max = 1},
                {item = 'dinheiro-sujer', min = 7000, max = 8000},
                {item = 'dinheiro-sujer', min = 7000, max = 10000},
                {item = 'WEAPON_KNIFE', min = 0, max = 1},
                {item = 'dinheiro-sujer', min = 7000, max = 9000},
                {item = 'dinheiro-sujer', min = 7000, max = 11000},
                {item = 'WEAPON_POOLCUE', min = 0, max = 1},
                {item = 'dinheiro-sujer', min = 7000, max = 10000},
                {item = 'keycard', min = 0, max = 1},
                {item = 'paraquedas', min = 0, max = 2},
                {item = 'alianca', min = 0, max = 1},
                {item = 'roupa', min = 0, max = 2},
                {item = 'colete', min = 0, max = 2},
                {item = 'dinheiro-sujer', min = 7000, max = 8000},
                {item = 'dinheiro-sujer', min = 7000, max = 10000},
            }
        },
        ['configBancoCentral'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 0, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo ao Central! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 300, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Banco Central', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 48000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 8500000, max = 10000000}  
            }
        },
        ['configJoalheria'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 6, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo a Joalheria! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 300, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Joalheria', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 4300000, max = 5500000}  
            }
        },
        ['configPaleto'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 8, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo ao Paleto! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 300, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Banco de Paleto', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 7500000, max = 10000000}  
            }
        },
        ['configYellow'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 4, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo ao Yellow Jack! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 300, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Yellow Jack', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 350000, max = 500000}  
            }
        },
        ['configLojinha'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 4, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo a Lojinha! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'keycard', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 300, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Lojinha', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 12000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 340000, max = 500000}  
            }
        },
        ['configPorto'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 14, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo ao Porto! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 300, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Porto', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 12000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 6000000, max = 10000000}  
            }
        },
        ['configEstudio'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 8, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo ao Estudio! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 300, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Estudio', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 12000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 3500000, max = 4500000}  
            }
        },
        ['configFaculdade'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 8, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo a Faculdade! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 300, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Faculdade', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 12000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 3200000, max = 3500000}  
            }
        },
        ['configFerroVelho'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 8, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo ao Ferro Velho! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 300, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Ferro Velho', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 12000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 1700000, max = 2400000}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 2000000, max = 3500000}  
            }
        },
        ['configBebidas'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 4, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo a loja de Bebidas! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'keycard', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 300, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Loja de Bebidas', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 12000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 100000, max = 150000}  
            }
        },
        ['configTrevor'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 6, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo ao Trevor! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 300, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Aeroporto do Trevor', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 12000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 1000000, max = 2500000}  
            }
        },
        ['configAeroporto'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 7, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo ao Aeroporto! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 300, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Aeroporto', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 12000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 1600000, max =  2300000 }  
            }
        },
        ['configIndustria'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 7, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo a Industria! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 300, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Industria', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 12000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 112000, max = 2700000}  
            }
        },
        ['configZancudo'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 14, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo ao Zancudo! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 300, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Zancudo', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 12000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 3600000, max = 7000000} 
            }
        },
        ['configObservatorio'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 8, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo ao Observatório! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 315, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Observatorio', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 30, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 1700000, max = 2500000}  
            }
        },
        ['configFlecka'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 9, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo ao Banco Fleeca! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 300, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Banco Fleeca', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 4700000, max = 5400000}    
            }
        },
        ['configFleckadel'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 9, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo ao BANCO FLEECA DE DEL PERRO! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime =  300, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'BANCO FLEECA DE DEL PERRO', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 4500000, max = 5000000}    
            }
        },
        ['configGalinheiro'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 9, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo ao Galinheiro! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 300, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Galinheiro', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 1500000, max = 2300000}    
            }
        },
        ['configAçougue'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 9, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo ao Açougue! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 300, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Açougue', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 1500000, max = 2300000}    
            }
        },
        ['configAuditorio'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 8, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo ao Auditorio! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 300, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Auditorio', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 1000000, max = 2000000}  
            }
        },
        ['configGolf'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 8, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo ao Campo de Golf! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 300, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Campo de Golf', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 1300000, max = 1600000}  
            }
        },
        ['configCemiterio'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 8, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo ao Cemitério! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 200, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Cemitério', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 450000, max = 650000}  
            }
        },
        ['configRange'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 8, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo ao The Range! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 300, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'The Range', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 2400000, max = 3100000}  
            }
        },
        ['configVanilla'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 8, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo ao Vanilla! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 300, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Vanilla', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 500000, max = 800000}  
            }
        },
        ['configMecanica'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 8, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo a Mecanica! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'keycard', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 100, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Mecanica', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 60000, max = 90000}  
            }
        },
        ['configBarbearia'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 8, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo a Barbearia! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'keycard', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 60 , -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Barbearia', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 20000, max = 100000}  
            }
        },
        ['configFestaJunina'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 8, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo a Festa Junina! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'keycard', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 100 , -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Festa Junina', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 150000, max = 350000}  
            }
        },
        ['configLostMC'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 8, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo a LostMC! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'keycard', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 100 , -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'LostMC', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 100000, max = 120000}  
            }
        },
        ['configNiobio'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 8, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo ao Niobio! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 300 , -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Niobio', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 3900000, max = 7500000}  
            }
        },
        ['configUsina'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 8, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo a Usina Eletrica! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 300 , -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Usina Eletrica', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 4100000, max = 7600000}  
            }
        },
        ['configAuto'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 8, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo a Auto Reprirs! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 300 , -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'AUTO REPRIRS', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 1400000, max = 2600000}  
            }
        },
        ['configPier'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 8, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo ao Pier! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 300, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Pier', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 1700000, max = 2500000}  
            }
        },
        ['configNavio'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 8, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo ao Navio! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 300, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Navio', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 900000, max = 2200000}  
            }
        },
        ['configLosSantos'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 8, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo a Los Santos! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 600, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Los Santos', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 4800000, max = 5800000}  
            }
        },
        ['configPesca'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 8, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo a Casa da Praia! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 200, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Casa da Praia', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 500000, max = 700000}  
            }
        },
        ['configContainer'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 8, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo ao Container! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 200, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Container', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 600000, max = 950000}  
            }
        },
        ['configDeposito'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 8, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo ao Deposito! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 300, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'Deposito', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 600000, max = 900000}  
            }
        },

        ['configCClub'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 8, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo a COMMEDY CLUB! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'keycard', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 200, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'COMMEDY CLUB', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 100000, max = 450000}  
            }
        },

        ['configCELEIRO'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 8, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo a CELEIRO! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'keycard', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 200, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'CELEIRO', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 120000, max = 350000}  
            }
        },

        ['configFASTFOOD'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 8, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo a FAST FOOD! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'keycard', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 200, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'FAST FOOD', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 100000, max = 400000}  
            }
        },

        ['configCLUBE'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 8, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo a CLUBE! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 300, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'CLUBE', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 1000000, max = 1500000}  
            }
        },

        ['configRESIDAS'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 8, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo a RESIDAS! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'keycard', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 50, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'RESIDAS', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 80000, max = 100000}  
            }
        },

        ['configGALILEU'] = {
            type = 'robbery', -- não alterar
            input = 'robbery', -- não alterar
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
                name = 'Roubo?', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para iniciar o roubo 


            qtdPolice = 8, -- quantidade de policia necessaria
            policeChance = 100, -- chance de acionar a policia durante o roubo
            policeText = 'Roubo a GALILEU! Vá até o local e intercepte o assaltante!', -- Texto que ira aparecer aos policiais durante o roubo
            minigame = '', -- game para efetuar o roubo (Vazio para nenhum ou: nptask, skillbar, keymaster, pdsafe)

            robberyRequestItem = true, -- precisa de um item para roubar?
            robberyItem = {item = 'pendrive', qtd = 1}, -- Item e quantidade caso robberyRequestItem = true
            robberyTime = 50, -- tempo para concluir o roubo e somente apos concluir da o payment
            robberyIndex = 'GALILEU', -- nome que sera levado em conta para o StandBy            
            robberyStandByType = 2, -- Tipo do StandBy (1 = individual, 2 = global (mesmo grupo de roubo))
            robberyStandByRobbery = 10, -- Tempo do StandBy entre roubos naquele roubo em especifico
            robberyCheckStandBy = true, -- Verificar se a pessoa esta procurada ou não para liberar ela roubar
            robberySetStandBy = true, -- Vai setar a pessoa como procurado ou não
            robberyStandByPerson = 24000, -- tempo que a pessoa vai ficar procurada apos efetuar o roubo (não integrado com outros sistemas de procurado)

            paymentType = {
                money = false, -- vai dar dinheiro limpo ao efetuar o roubo?
                item = true -- vai dar item ao efetuar o roubo?
            },
            paymentMoney = { min = 100, max = 100}, -- caso money = true, qual valor de dinheiro limpo vai dar 
            paymentItemType = 2, -- caso item = true, qual tipo de entrega (1 = randomico, 2 = todos os itens)
            paymentItem = {
                {item = 'dinheiro-sujer', min = 1000000, max = 1200000}  
            }
        },
    },



    locs = {
        {showBlip = false, coord = vector3(119.10,-883.70,31.12), heading = 71.0, config = 'configRobberyAtm', id = 1},   -- Praça
        {showBlip = false, coord = vector3(-1315.80,-834.76,16.96), heading = 305.02, config = 'configRobberyAtm', id = 2}, -- MazeBank Praia
        {showBlip = false, coord = vector3(285.44,143.38,104.17), heading = 159.0, config = 'configRobberyAtm', id = 3},   -- Caixinha Central
        {showBlip = false, coord = vector3(1138.23,-468.89,66.73), heading = 74.0, config = 'configRobberyAtm', id = 4},  -- Caixinha Lago Estacionamento
        -- {showBlip = false, coord = vector3(-254.41,-692.46,33.60), heading = 159.0, config = 'configRobberyAtm', id = 5},  -- Esquina Predio
        {showBlip = false, coord = vector3(-2072.36,-317.29,13.31), heading = 260.0, config = 'configRobberyAtm', id = 6}, -- Posto Praia
        {showBlip = false, coord = vector3(1077.70,-776.54,58.24), heading = 182.0, config = 'configRobberyAtm', id = 7},  -- Caixinha Lago estacionamento
        {showBlip = false, coord = vector3(289.09,-1256.79,29.45), heading = 271.44, config = 'configRobberyAtm', id = 8},  -- Posto Praça
        {showBlip = false, coord = vector3(-3241.42,997.29,12.56), heading = 28.84, config = 'configRobberyAtm', id = 9},  -- Posto Praça
        {showBlip = false, coord = vector3(-821.64,-1082.05,11.14), heading = 107.36, config = 'configRobberyAtm', id = 10},-- Posto Praça
        {showBlip = false, coord = vector3(2558.95,350.89,108.63), heading = 357.81, config = 'configRobberyAtm', id = 11}, -- Posto Praça
        {showBlip = false, coord = vector3(89.62,2.31,68.32), heading = 43.55, config = 'configRobberyAtm', id = 12},      -- Posto Praça
        {showBlip = false, coord = vector3(263.06,214.61,101.69), heading = 92.82, config = 'configBancoCentral', id = 13},-- BANCO CENTRAL
        {showBlip = false, coord = vector3(-631.34,-230.14,38.06), heading = 92.82, config = 'configJoalheria', id = 14},  -- JOALHERIA
        {showBlip = false, coord = vector3(-2957.47,481.29,15.71), heading = 92.82, config = 'configFlecka', id = 15},     -- FLECKA
        {showBlip = false, coord = vector3(-103.96,6477.58,31.63), heading = 92.82, config = 'configPaleto', id = 16},     -- Paleto
        {showBlip = false, coord = vector3(1982.45,3053.43,47.22), heading = 92.82, config = 'configYellow', id = 17},     -- Yellow
        {showBlip = false, coord = vector3(2549.20,384.92,108.62), heading = 100.04, config = 'configLojinha', id = 18},   -- LOJINHA
        {showBlip = false, coord = vector3(-709.18,-904.26,19.21), heading = 89.28, config = 'configLojinha', id = 19},    -- LOJINHA
        {showBlip = false, coord = vector3(-3250.06,1004.43, 12.83), heading = 84.66, config = 'configLojinha', id = 20},  -- LOJINHA
        {showBlip = false, coord = vector3(1734.83,6420.75,35.04), heading = 337.29, config = 'configLojinha', id = 21},   -- LOJINHA
        {showBlip = false, coord = vector3(546.36,2662.74,42.15), heading = 197.28, config = 'configLojinha', id = 22},    -- LOJINHA
        {showBlip = false, coord = vector3(1160.16,-314.12,69.20), heading = 112.55, config = 'configLojinha', id = 23},   -- LOJINHA
        {showBlip = false, coord = vector3(28.27,-1339.78,29.49), heading = 8.12, config = 'configLojinha', id = 24},      -- LOJINHA
        {showBlip = false, coord = vector3(378.15,333.36,103.57), heading = 344.46, config = 'configLojinha', id = 25},    -- LOJINHA
        {showBlip = false, coord = vector3(-1828.58,799.10,138.17), heading = 132.61, config = 'configLojinha', id = 26},  -- LOJINHA
        -- {showBlip = false, coord = vector3(92.38,-1291.8,29.27), heading = 42.49, config = 'configLojinha', id = 27},      -- LOJINHA
        {showBlip = false, coord = vector3(-1116.51,-503.1,35.81), heading = 44.03, config = 'configEstudio', id = 29}, 
       -- {showBlip = false, coord = vector3(-2293.56,354.94,174.6), heading = 44.03, config = 'configFaculdade', id = 30},   
        {showBlip = false, coord = vector3(-1220.46,-912.48,12.33), heading = 42.49, config = 'configBebidas', id = 32},   
        {showBlip = false, coord = vector3(-2962.19,389.63,15.05), heading = 42.49, config = 'configBebidas', id = 33},   
        {showBlip = false, coord = vector3(1129.85,-982.21,46.42), heading = 42.49, config = 'configBebidas', id = 34},  
        {showBlip = false, coord = vector3(1176.01,2711.0,38.98), heading = 42.49, config = 'configBebidas', id = 35},  
        {showBlip = false, coord = vector3(1702.56,3290.52,48.93), heading = 42.49, config = 'configTrevor', id = 36},  
        {showBlip = false, coord = vector3(2340.82,3126.46,48.21), heading = 42.49, config = 'configAeroporto', id = 37},  
        -- {showBlip = false, coord = vector3(1737.16,-1474.89,113.95), heading = 42.49, config = 'configIndustria', id = 38},  
        {showBlip = false, coord = vector3(-2346.89,3269.94,32.82), heading = 42.49, config = 'configZancudo', id = 39},  
        {showBlip = false, coord = vector3(690.13,588.48,131.07), heading = 42.49, config = 'configObservatorio', id = 40},
        {showBlip = false, coord = vector3(25.01,-1105.76,29.8), heading = 42.49, config = 'configRobberyAmmu', id = 41},  
        {showBlip = false, coord = vector3(807.86,-2159.61,29.62), heading = 42.49, config = 'configRobberyAmmu', id = 42},  
        {showBlip = false, coord = vector3(-67.66,6254.17,31.12), heading = 42.49, config = 'configGalinheiro', id = 43},  
        {showBlip = false, coord = vector3(994.31,-2162.45,30.42), heading = 42.49, config = 'configAçougue', id = 44},  
        {showBlip = false, coord = vector3(185.65,1214.09,225.6), heading = 42.49, config = 'configAuditorio', id = 45},  
        {showBlip = false, coord = vector3(-1358.97,120.46,56.28), heading = 42.49, config = 'configGolf', id = 46},
        -- {showBlip = false, coord = vector3(-1684.88,-291.61,51.9), heading = 42.49, config = 'configCemiterio', id = 47},
        {showBlip = false, coord = vector3(48.11,3702.23,40.52), heading = 42.49, config = 'configRange', id = 48},
        {showBlip = false, coord = vector3(92.42,-1291.85,29.27), heading = 42.49, config = 'configVanilla', id = 49},
        -- {showBlip = false, coord = vector3(-227.69,-1328.44,30.9), heading = 42.49, config = 'configMecanica', id = 50},
        {showBlip = false, coord = vector3(-1284.25,-1115.46,7.0), heading = 42.49, config = 'configBarbearia', id = 51},
        {showBlip = false, coord = vector3(134.68,-1708.08,29.3), heading = 42.49, config = 'configBarbearia', id = 52},
        -- {showBlip = false, coord = vector3(-595.36,-1653.46,20.64), heading = 42.49, config = 'configFerroVelho', id = 53},
        {showBlip = false, coord = vector3(386.17,-325.16,46.87), heading = 42.49, config = 'configFestaJunina', id = 54},
        -- {showBlip = false, coord = vector3(972.65,-94.02,74.85), heading = 42.49, config = 'configLostMC', id = 55},
        {showBlip = false, coord = vector3(3594.4,3705.79,29.69), heading = 42.49, config = 'configNiobio', id = 56},
        -- {showBlip = false, coord = vector3(2864.02,1509.87,24.57), heading = 42.49, config = 'configUsina', id = 57},
        {showBlip = false, coord = vector3(1218.65,-1267.15,36.43), heading = 42.49, config = 'configAuto', id = 58},
       -- {showBlip = false, coord = vector3(-1624.68,-1098.36,13.02), heading = 42.49, config = 'configPier', id = 59},
        {showBlip = false, coord = vector3(-124.92,-2369.47,9.32), heading = 42.49, config = 'configNavio', id = 60},
        {showBlip = false, coord = vector3(247.8,-3315.97,5.8), heading = 42.49, config = 'configLosSantos', id = 61},
        {showBlip = false, coord = vector3(-3418.25,971.15,11.94), heading = 42.49, config = 'configPesca', id = 62},
        {showBlip = false, coord = vector3(-1919.55,2794.26,32.8), heading = 42.49, config = 'configContainer', id = 63},
        {showBlip = false, coord = vector3(173.87,2778.75,46.08), heading = 42.49, config = 'configDeposito', id = 64}, 
        {showBlip = false, coord = vector3(-1211.35,-335.86,37.78), heading = 42.49, config = 'configFleckadel', id = 65}, 
        {showBlip = false, coord = vector3(-439.79,295.14,83.32), heading = 42.49, config = 'configCClub', id = 66},
        {showBlip = false, coord = vector3(1274.88,332.55,81.99), heading = 42.49, config = 'configCELEIRO', id = 67}, 
        {showBlip = false, coord = vector3(1249.19,-350.33,69.2), heading = 42.49, config = 'configFASTFOOD', id = 68}, 
        {showBlip = false, coord = vector3(1399.67,-604.1,74.48), heading = 42.49, config = 'configRESIDAS', id = 70}, 
        {showBlip = false, coord = vector3(-453.29,1082.01,327.68), heading = 42.49, config = 'configGALILEU', id = 71},
        {showBlip = false, coord = vector3(3091.89,-4724.01,27.28), heading = 202.06, config = 'configPortaAvioes', id = 72},

    },

})