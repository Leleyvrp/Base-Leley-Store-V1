NyoModules.registerConfig({
    config = {
        ['craftingbratva'] = {
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
                name = 'Crafting', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            }, 
            -- General Settings
            perm = "bratva.permissao", -- permissao para acessar o blip   
            craftingConfig = {
                ['pistolas'] = {
                    icon = 'fad fa-sword',
                    name = 'Pistolas',
                    executeAnimation = function()
                        ExecuteCommand("e mecanico2")
                    end,
                    stopAnimation = function()
                        vRP._stopAnim()
                    end,
                    itens = {
                        ['wbody|WEAPON_MACHINEPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 220,
                                ['placa-metal'] = 1,
                                ['molas'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_PISTOL_MK2'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 160,
                                ['placa-metal'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_REVOLVER'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 290,
                                ['placa-metal'] = 4,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_SNSPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 100,
                            
                                ['molas'] = 1,
                                ['gatilho'] = 1
                            }
                        },
                    }
                },
                ['rifles'] = {
                    icon = 'fad fa-sword',
                    name = 'Rifles',
                    executeAnimation = function()

                    end,
                    stopAnimation = function()

                    end,
                    itens = {
                        ['wbody|WEAPON_ASSAULTRIFLE'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 290,
                                ['placa-metal'] = 3,
                                ['molas'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_SPECIALCARBINE'] = {
                            minAmount = 1,
                            maxAmount = 10,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 290,
                                ['placa-metal'] = 3,
                                ['molas'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_GUSENBERG'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 234,
                                ['placa-metal'] = 4,
                                ['molas'] = 3,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_ASSAULTSMG'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 234,
                                ['placa-metal'] = 3,
                                ['molas'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_MINISMG'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 210,
                                ['placa-metal'] = 1,
                                ['molas'] = 2,
                                ['gatilho'] = 2
                            }
                        },
                        ['wbody|WEAPON_DOUBLEACTION'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 260,
                                ['placa-metal'] = 2,
                                ['molas'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_CERAMICPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 130,
                                ['placa-metal'] = 1,
                                ['molas'] = 1,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_SAWNOFFSHOTGUN'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 300,
                                ['placa-metal'] = 4,
                                ['molas'] = 1,
                                ['gatilho'] = 1
                            }
                        },
                    }
                }
            }
        },
        ['craftingyakuza'] = {
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
                name = 'Crafting', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            }, 
            -- General Settings
            perm = "yakuza.permissao", -- permissao para acessar o blip   
            craftingConfig = {
                ['pistolas'] = {
                    icon = 'fad fa-sword',
                    name = 'Pistolas',
                    executeAnimation = function()
                        ExecuteCommand("e mecanico2")
                    end,
                    stopAnimation = function()
                        vRP._stopAnim()
                    end,
                    itens = {
                        ['wbody|WEAPON_MACHINEPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 220,
                                ['placa-metal'] = 1,
                                ['molas'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_PISTOL_MK2'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 160,
                                ['placa-metal'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_REVOLVER'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 290,
                                ['placa-metal'] = 4,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_SNSPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 100,
                          
                                ['molas'] = 1,
                                ['gatilho'] = 1
                            }
                        },
                    }
                },
                ['rifles'] = {
                    icon = 'fad fa-sword',
                    name = 'Rifles',
                    executeAnimation = function()

                    end,
                    stopAnimation = function()

                    end,
                    itens = {
                        ['wbody|WEAPON_ASSAULTRIFLE'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 290,
                                ['placa-metal'] = 3,
                                ['molas'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_SPECIALCARBINE'] = {
                            minAmount = 1,
                            maxAmount = 10,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 290,
                                ['placa-metal'] = 3,
                                ['molas'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_GUSENBERG'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 234,
                                ['placa-metal'] = 4,
                                ['molas'] = 3,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_ASSAULTSMG'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 234,
                                ['placa-metal'] = 3,
                                ['molas'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_MINISMG'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 210,
                                ['placa-metal'] = 1,
                                ['molas'] = 2,
                                ['gatilho'] = 2
                            }
                        },
                        ['wbody|WEAPON_DOUBLEACTION'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 260,
                                ['placa-metal'] = 2,
                                ['molas'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_CERAMICPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 130,
                                ['placa-metal'] = 1,
                                ['molas'] = 1,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_SAWNOFFSHOTGUN'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 300,
                                ['placa-metal'] = 4,
                                ['molas'] = 1,
                                ['gatilho'] = 1
                            }
                        },
                    }
                }
            }
        },
        ['craftingcartel'] = {
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
                name = 'Crafting', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            }, 
            -- General Settings
            perm = "cartel.permissao", -- permissao para acessar o blip   
            craftingConfig = {
                ['pistolas'] = {
                    icon = 'fad fa-sword',
                    name = 'Pistolas',
                    executeAnimation = function()
                        ExecuteCommand("e mecanico2")
                    end,
                    stopAnimation = function()
                        vRP._stopAnim()
                    end,
                    itens = {
                        ['wbody|WEAPON_MACHINEPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 220,
                                ['placa-metal'] = 1,
                                ['molas'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_PISTOL_MK2'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 160,
                                ['placa-metal'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_REVOLVER'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 290,
                                ['placa-metal'] = 4,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_SNSPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 100,
                           
                                ['molas'] = 1,
                                ['gatilho'] = 1
                            }
                        },
                    }
                },
                ['rifles'] = {
                    icon = 'fad fa-sword',
                    name = 'Rifles',
                    executeAnimation = function()

                    end,
                    stopAnimation = function()

                    end,
                    itens = {
                        ['wbody|WEAPON_ASSAULTRIFLE'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 290,
                                ['placa-metal'] = 3,
                                ['molas'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_SPECIALCARBINE'] = {
                            minAmount = 1,
                            maxAmount = 10,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 290,
                                ['placa-metal'] = 3,
                                ['molas'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_GUSENBERG'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 234,
                                ['placa-metal'] = 4,
                                ['molas'] = 3,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_ASSAULTSMG'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 234,
                                ['placa-metal'] = 3,
                                ['molas'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_MINISMG'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 210,
                                ['placa-metal'] = 1,
                                ['molas'] = 2,
                                ['gatilho'] = 2
                            }
                        },
                        ['wbody|WEAPON_DOUBLEACTION'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 260,
                                ['placa-metal'] = 2,
                                ['molas'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_CERAMICPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 130,
                                ['placa-metal'] = 1,
                                ['molas'] = 1,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_SAWNOFFSHOTGUN'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 300,
                                ['placa-metal'] = 4,
                                ['molas'] = 1,
                                ['gatilho'] = 1
                            }
                        },
                    }
                }
            }
        },
        ['craftingcv'] = {
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
                name = 'Crafting', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            }, 
            -- General Settings
            perm = "cv.permissao", -- permissao para acessar o blip   
            craftingConfig = {
                ['pistolas'] = {
                    icon = 'fad fa-sword',
                    name = 'Pistolas',
                    executeAnimation = function()
                        ExecuteCommand("e mecanico2")
                    end,
                    stopAnimation = function()
                        vRP._stopAnim()
                    end,
                    itens = {
                        ['wbody|WEAPON_MACHINEPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 220,
                                ['placa-metal'] = 1,
                                ['molas'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_PISTOL_MK2'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 160,
                                ['placa-metal'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_REVOLVER'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 290,
                                ['placa-metal'] = 4,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_SNSPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 100,
                         
                                ['molas'] = 1,
                                ['gatilho'] = 1
                            }
                        },
                    }
                },
                ['rifles'] = {
                    icon = 'fad fa-sword',
                    name = 'Rifles',
                    executeAnimation = function()

                    end,
                    stopAnimation = function()

                    end,
                    itens = {
                        ['wbody|WEAPON_ASSAULTRIFLE'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 290,
                                ['placa-metal'] = 3,
                                ['molas'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_SPECIALCARBINE'] = {
                            minAmount = 1,
                            maxAmount = 10,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 290,
                                ['placa-metal'] = 3,
                                ['molas'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_GUSENBERG'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 234,
                                ['placa-metal'] = 4,
                                ['molas'] = 3,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_ASSAULTSMG'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 234,
                                ['placa-metal'] = 3,
                                ['molas'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_MINISMG'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 210,
                                ['placa-metal'] = 1,
                                ['molas'] = 2,
                                ['gatilho'] = 2
                            }
                        },
                        ['wbody|WEAPON_DOUBLEACTION'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 260,
                                ['placa-metal'] = 2,
                                ['molas'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_CERAMICPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 130,
                                ['placa-metal'] = 1,
                                ['molas'] = 1,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_SAWNOFFSHOTGUN'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 300,
                                ['placa-metal'] = 4,
                                ['molas'] = 1,
                                ['gatilho'] = 1
                            }
                        },
                    }
                }
            }
        },
        ['craftingelements'] = {
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
                name = 'Crafting', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            }, 
            -- General Settings
            perm = "elements.permissao", -- permissao para acessar o blip   
            craftingConfig = {
                ['pistolas'] = {
                    icon = 'fad fa-sword',
                    name = 'Pistolas',
                    executeAnimation = function()
                        ExecuteCommand("e mecanico2")
                    end,
                    stopAnimation = function()
                        vRP._stopAnim()
                    end,
                    itens = {
                        ['wbody|WEAPON_MACHINEPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 220,
                                ['placa-metal'] = 1,
                                ['molas'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_PISTOL_MK2'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 160,
                                ['placa-metal'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_REVOLVER'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 290,
                                ['placa-metal'] = 4,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_SNSPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 100,
                         
                                ['molas'] = 1,
                                ['gatilho'] = 1
                            }
                        },
                    }
                },
                ['rifles'] = {
                    icon = 'fad fa-sword',
                    name = 'Rifles',
                    executeAnimation = function()

                    end,
                    stopAnimation = function()

                    end,
                    itens = {
                        ['wbody|WEAPON_ASSAULTRIFLE'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 290,
                                ['placa-metal'] = 3,
                                ['molas'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_SPECIALCARBINE'] = {
                            minAmount = 1,
                            maxAmount = 10,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 290,
                                ['placa-metal'] = 3,
                                ['molas'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_GUSENBERG'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 234,
                                ['placa-metal'] = 4,
                                ['molas'] = 3,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_ASSAULTSMG'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 234,
                                ['placa-metal'] = 3,
                                ['molas'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_MINISMG'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 210,
                                ['placa-metal'] = 1,
                                ['molas'] = 2,
                                ['gatilho'] = 2
                            }
                        },
                        ['wbody|WEAPON_DOUBLEACTION'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 260,
                                ['placa-metal'] = 2,
                                ['molas'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_CERAMICPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 130,
                                ['placa-metal'] = 1,
                                ['molas'] = 1,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_SAWNOFFSHOTGUN'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 300,
                                ['placa-metal'] = 4,
                                ['molas'] = 1,
                                ['gatilho'] = 1
                            }
                        },
                    }
                }
            }
        },
        ['craftingbloods'] = {
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
                name = 'Crafting', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            }, 
            -- General Settings
            perm = "bloods.permissao", -- permissao para acessar o blip   
            craftingConfig = {
                ['municaopistola'] = {
                    icon = 'fad fa-sword',
                    name = 'Munição Pistolas',
                    executeAnimation = function()
                        ExecuteCommand("e mexer")
                    end,
                    stopAnimation = function()
                        vRP._stopAnim()
                    end,
                    itens = {
                        ['wammo|WEAPON_MACHINEPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_PISTOL_MK2'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_REVOLVER'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_SNSPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                    }
                },
                ['rifles'] = {
                    icon = 'fad fa-sword',
                    name = 'Munição Rifles',
                    executeAnimation = function()

                    end,
                    stopAnimation = function()

                    end,
                    itens = {
                        ['wammo|WEAPON_ASSAULTRIFLE'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_SPECIALCARBINE'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_GUSENBERG'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_ASSAULTSMG'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_MINISMG'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_SAWNOFFSHOTGUN'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_CERAMICPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_DOUBLEACTION'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                    }
                }
            }
        },

        ['craftinggalaxy'] = {
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
                name = 'Crafting', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            }, 
            -- General Settings
            perm = "aztecas.permissao", -- permissao para acessar o blip   
            craftingConfig = {
                ['municaopistola'] = {
                    icon = 'fad fa-sword',
                    name = 'Munição Pistolas',
                    executeAnimation = function()
                        ExecuteCommand("e mexer")
                    end,
                    stopAnimation = function()
                        vRP._stopAnim()
                    end,
                    itens = {
                        ['wammo|WEAPON_MACHINEPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_PISTOL_MK2'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_REVOLVER'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_SNSPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                    }
                },
                ['rifles'] = {
                    icon = 'fad fa-sword',
                    name = 'Munição Rifles',
                    executeAnimation = function()

                    end,
                    stopAnimation = function()

                    end,
                    itens = {
                        ['wammo|WEAPON_ASSAULTRIFLE'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_SPECIALCARBINE'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_GUSENBERG'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_ASSAULTSMG'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_MINISMG'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_SAWNOFFSHOTGUN'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_CERAMICPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_DOUBLEACTION'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                    }
                }
            }
        },

        ['craftingtdr2'] = {
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
                name = 'Crafting', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            }, 
            -- General Settings
            perm = "tdr.permissao", -- permissao para acessar o blip   
            craftingConfig = {
                 ['pistolas'] = {
                    icon = 'fad fa-sword',
                    name = 'Pistolas',
                    executeAnimation = function()
                        ExecuteCommand("e mecanico2")
                    end,
                    stopAnimation = function()
                        vRP._stopAnim()
                    end,
                    itens = {
                        ['wbody|WEAPON_MACHINEPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 220,
                                ['placa-metal'] = 1,
                                ['molas'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_PISTOL_MK2'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 160,
                                ['placa-metal'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_REVOLVER'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 290,
                                ['placa-metal'] = 4,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_SNSPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 100,
                    
                                ['molas'] = 1,
                                ['gatilho'] = 1
                            }
                        },
                    }
                },
                ['rifles'] = {
                    icon = 'fad fa-sword',
                    name = 'Rifles',
                    executeAnimation = function()

                    end,
                    stopAnimation = function()

                    end,
                    itens = {
                        ['wbody|WEAPON_ASSAULTRIFLE'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 290,
                                ['placa-metal'] = 3,
                                ['molas'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_SPECIALCARBINE'] = {
                            minAmount = 1,
                            maxAmount = 10,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 290,
                                ['placa-metal'] = 3,
                                ['molas'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_GUSENBERG'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 234,
                                ['placa-metal'] = 4,
                                ['molas'] = 3,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_ASSAULTSMG'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 234,
                                ['placa-metal'] = 3,
                                ['molas'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_MINISMG'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 210,
                                ['placa-metal'] = 1,
                                ['molas'] = 2,
                                ['gatilho'] = 2
                            }
                        },
                        ['wbody|WEAPON_DOUBLEACTION'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 260,
                                ['placa-metal'] = 2,
                                ['molas'] = 2,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_CERAMICPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 130,
                                ['placa-metal'] = 1,
                                ['molas'] = 1,
                                ['gatilho'] = 1
                            }
                        },
                        ['wbody|WEAPON_SAWNOFFSHOTGUN'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 10,
                            requiredItens = {
                                ['pecadearma'] = 300,
                                ['placa-metal'] = 4,
                                ['molas'] = 1,
                                ['gatilho'] = 1
                            }
                        },
                    }
                }
            }
        },

        ['craftingcamorra'] = {
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
                name = 'Crafting', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            }, 
            -- General Settings
            perm = "camorra.permissao", -- permissao para acessar o blip   
            craftingConfig = {
                ['municaopistola'] = {
                    icon = 'fad fa-sword',
                    name = 'Munição Pistolas',
                    executeAnimation = function()
                        ExecuteCommand("e mexer")
                    end,
                    stopAnimation = function()
                        vRP._stopAnim()
                    end,
                    itens = {
                        ['wammo|WEAPON_MACHINEPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_PISTOL_MK2'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_REVOLVER'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_SNSPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                    }
                },
                ['rifles'] = {
                    icon = 'fad fa-sword',
                    name = 'Munição Rifles',
                    executeAnimation = function()

                    end,
                    stopAnimation = function()

                    end,
                    itens = {
                        ['wammo|WEAPON_ASSAULTRIFLE'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_SPECIALCARBINE'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_GUSENBERG'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_ASSAULTSMG'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_MINISMG'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_SAWNOFFSHOTGUN'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_CERAMICPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_DOUBLEACTION'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                    }
                }
            }
        },
        ['craftingvagos'] = {
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
                name = 'Crafting', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            }, 
            -- General Settings
            perm = "vagos.permissao", -- permissao para acessar o blip   
            craftingConfig = {
                ['drugsmeta'] = {
                    icon = 'fad fa-sword',
                    name = 'Metanfetamina',
                    executeAnimation = function()
                        ExecuteCommand("e mexer")
                    end,
                    stopAnimation = function()
                        vRP._stopAnim()
                    end,
                    itens = {
                        ['metanfetamina'] = {
                            minAmount = 1,
                            maxAmount = 150,
                            resultAmount = 2,
                            productionTime = 1,
                            requiredItens = {
                                ['nitrato-amonia'] = 1
                            }
                        },
                    }
                },
            }
        },
        ['craftingballas'] = {
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
                name = 'Crafting', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            }, 
            -- General Settings
            perm = "ballas.permissao", -- permissao para acessar o blip   
            craftingConfig = {
                ['drugscocaina'] = {
                    icon = 'fad fa-sword',
                    name = 'Cocaina',
                    executeAnimation = function()
                        ExecuteCommand("e mexer")
                    end,
                    stopAnimation = function()
                        vRP._stopAnim()
                    end,
                    itens = {
                        ['cocaina'] = {
                            minAmount = 1,
                            maxAmount = 150,
                            resultAmount = 2,
                            productionTime = 1,
                            requiredItens = {
                                ['folhas-coca'] = 1
                            }
                        },
                    }
                },
            }
        },
        ['craftingverdes'] = {
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
                name = 'Crafting', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            }, 
            -- General Settings
            perm = "grove.permissao", -- permissao para acessar o blip   
            craftingConfig = {
                ['drugsmaconha'] = {
                    icon = 'fad fa-sword',
                    name = 'Verdes',
                    executeAnimation = function()
                        ExecuteCommand("e mexer")
                    end,
                    stopAnimation = function()
                        vRP._stopAnim()
                    end,
                    itens = {
                        ['maconha'] = {
                            minAmount = 1,
                            maxAmount = 150,
                            resultAmount = 2,
                            productionTime = 1,
                            requiredItens = {
                                ['canabis-alta'] = 1
                            }
                        },
                    }
                },
            }
        },
        ['craftingpcc'] = {
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
                name = 'Crafting', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            }, 
            -- General Settings
            perm = "pcc.permissao", -- permissao para acessar o blip   
            craftingConfig = {
                ['drugsheroina'] = {
                    icon = 'fad fa-sword',
                    name = 'Verdes',
                    executeAnimation = function()
                        ExecuteCommand("e mexer")
                    end,
                    stopAnimation = function()
                        vRP._stopAnim()
                    end,
                    itens = {
                        ['heroina'] = {
                            minAmount = 1,
                            maxAmount = 150,
                            resultAmount = 2,
                            productionTime = 1,
                            requiredItens = {
                                ['opio'] = 1
                            }
                        },
                    }
                },
            }
        },
        ['craftingazul'] = {
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
                name = 'Crafting', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            }, 
            -- General Settings
            perm = "azul.permissao", -- permissao para acessar o blip   
            craftingConfig = {
                ['drugslsd'] = {
                    icon = 'fad fa-sword',
                    name = 'LSD',
                    executeAnimation = function()
                        ExecuteCommand("e mexer")
                    end,
                    stopAnimation = function()
                        vRP._stopAnim()
                    end,
                    itens = {
                        ['lsd'] = {
                            minAmount = 1,
                            maxAmount = 150,
                            resultAmount = 2,
                            productionTime = 1,
                            requiredItens = {
                                ['fungos'] = 1
                            }
                        },
                    }
                },
            }
        },
        ['craftingturquia'] = {
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
                name = 'Crafting', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            }, 
            -- General Settings
            perm = "turquia.permissao", -- permissao para acessar o blip   
            craftingConfig = {
                ['municaopistola'] = {
                    icon = 'fad fa-sword',
                    name = 'Munição Pistolas',
                    executeAnimation = function()
                        ExecuteCommand("e mexer")
                    end,
                    stopAnimation = function()
                        vRP._stopAnim()
                    end,
                    itens = {
                        ['wammo|WEAPON_MACHINEPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_PISTOL_MK2'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_REVOLVER'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_SNSPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                    }
                },
                ['rifles'] = {
                    icon = 'fad fa-sword',
                    name = 'Munição Rifles',
                    executeAnimation = function()

                    end,
                    stopAnimation = function()

                    end,
                    itens = {
                        ['wammo|WEAPON_ASSAULTRIFLE'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_SPECIALCARBINE'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_GUSENBERG'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_ASSAULTSMG'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_MINISMG'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_SAWNOFFSHOTGUN'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_CERAMICPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_DOUBLEACTION'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                    }
                }
            }
        },
        ['craftingcn'] = {
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
                name = 'Crafting', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            }, 
            -- General Settings
            perm = "cn.permissao", -- permissao para acessar o blip   
            craftingConfig = {
                ['municaopistola'] = {
                    icon = 'fad fa-sword',
                    name = 'Munição Pistolas',
                    executeAnimation = function()
                        ExecuteCommand("e mecanico2")
                    end,
                    stopAnimation = function()
                        vRP._stopAnim()
                    end,
                    itens = {
                        
                        ['colete'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 20,
                                ['linha'] = 20,
                                ['kevlar'] = 20
                            }
                        },
                        ['algema'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 40,
                                ['linha'] = 40,
                                ['kevlar'] = 40
                            }
                        },
                        ['capuz'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 30,
                                ['linha'] = 30,
                                ['kevlar'] = 30
                            }
                        },
                        ['lockpick'] = {
                            minAmount = 1,
                            maxAmount = 10,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 20,
                                ['linha'] = 20,
                                ['kevlar'] = 20
                            }
                        },
                        ['pendrive'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 5,
                            requiredItens = {
                                ['pano'] = 40,
                                ['linha'] = 40,
                                ['kevlar'] = 40
                            }
                        },
                        ['keycard'] = {
                            minAmount = 1,
                            maxAmount = 10,
                            resultAmount = 1,
                            productionTime = 3,
                            requiredItens = {
                                ['pano'] = 10,
                                ['linha'] = 10,
                                ['kevlar'] = 10
                            }
                        },
                        -- ['c4'] = {
                        --     minAmount = 1,
                        --     maxAmount = 5,
                        --     resultAmount = 1,
                        --     productionTime = 10,
                        --     requiredItens = {
                        --         ['pano'] = 80,
                        --         ['linha'] = 80,
                        --         ['kevlar'] = 80
                        --     }
                        -- },
                        ['placa'] = {
                            minAmount = 1,
                            maxAmount = 10,
                            resultAmount = 1,
                            productionTime = 3,
                            requiredItens = {
                                ['pano'] = 10,
                                ['linha'] = 10,
                                ['kevlar'] = 10
                            }
                        },
                        ['molas'] = {
                            minAmount = 10,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 3,
                            requiredItens = {
                                ['pano'] = 10,
                                ['linha'] = 10,
                                ['kevlar'] = 10
                            }
                        },
                        ['gatilho'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 15,
                                ['linha'] = 15,
                                ['kevlar'] = 15
                            }
                        },
                        ['placa-metal'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 20,
                                ['linha'] = 20,
                                ['kevlar'] = 20
                            }
                        },
                    }
                },
            }
        },
        ['craftingmilicia'] = {
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
                name = 'Crafting', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            }, 
            -- General Settings
            perm = "milicia.permissao", -- permissao para acessar o blip   
            craftingConfig = {
                ['municaopistola'] = {
                    icon = 'fad fa-sword',
                    name = 'Munição Pistolas',
                    executeAnimation = function()
                        ExecuteCommand("e mecanico2")
                    end,
                    stopAnimation = function()
                        vRP._stopAnim()
                    end,
                    itens = {
                        
                        ['colete'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 20,
                                ['linha'] = 20,
                                ['kevlar'] = 20
                            }
                        },
                        ['algema'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 40,
                                ['linha'] = 40,
                                ['kevlar'] = 40
                            }
                        },
                        ['capuz'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 30,
                                ['linha'] = 30,
                                ['kevlar'] = 30
                            }
                        },
                        ['lockpick'] = {
                            minAmount = 1,
                            maxAmount = 10,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 20,
                                ['linha'] = 20,
                                ['kevlar'] = 20
                            }
                        },
                        ['pendrive'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 5,
                            requiredItens = {
                                ['pano'] = 40,
                                ['linha'] = 40,
                                ['kevlar'] = 40
                            }
                        },
                        ['keycard'] = {
                            minAmount = 1,
                            maxAmount = 10,
                            resultAmount = 1,
                            productionTime = 3,
                            requiredItens = {
                                ['pano'] = 10,
                                ['linha'] = 10,
                                ['kevlar'] = 10
                            }
                        },
                        -- ['c4'] = {
                        --     minAmount = 1,
                        --     maxAmount = 5,
                        --     resultAmount = 1,
                        --     productionTime = 10,
                        --     requiredItens = {
                        --         ['pano'] = 80,
                        --         ['linha'] = 80,
                        --         ['kevlar'] = 80
                        --     }
                        -- },
                        ['placa'] = {
                            minAmount = 1,
                            maxAmount = 10,
                            resultAmount = 1,
                            productionTime = 3,
                            requiredItens = {
                                ['pano'] = 10,
                                ['linha'] = 10,
                                ['kevlar'] = 10
                            }
                        },
                        ['molas'] = {
                            minAmount = 10,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 3,
                            requiredItens = {
                                ['pano'] = 10,
                                ['linha'] = 10,
                                ['kevlar'] = 10
                            }
                        },
                        ['gatilho'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 15,
                                ['linha'] = 15,
                                ['kevlar'] = 15
                            }
                        },
                        ['placa-metal'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 20,
                                ['linha'] = 20,
                                ['kevlar'] = 20
                            }
                        },
                    }
                },
            }
        },
        ['craftingFranca'] = {
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
                name = 'Crafting', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            }, 
            -- General Settings
            perm = "franca.permissao", -- permissao para acessar o blip   
            craftingConfig = {
                ['municaopistola'] = {
                    icon = 'fad fa-sword',
                    name = 'Munição Pistolas',
                    executeAnimation = function()
                        ExecuteCommand("e mexer")
                    end,
                    stopAnimation = function()
                        vRP._stopAnim()
                    end,
                    itens = {
                        ['wammo|WEAPON_MACHINEPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_PISTOL_MK2'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_REVOLVER'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_SNSPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                    }
                },
                ['rifles'] = {
                    icon = 'fad fa-sword',
                    name = 'Munição Rifles',
                    executeAnimation = function()

                    end,
                    stopAnimation = function()

                    end,
                    itens = {
                        ['wammo|WEAPON_ASSAULTRIFLE'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_SPECIALCARBINE'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_GUSENBERG'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_ASSAULTSMG'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_MINISMG'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_SAWNOFFSHOTGUN'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_CERAMICPISTOL'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                        ['wammo|WEAPON_DOUBLEACTION'] = {
                            minAmount = 1,
                            maxAmount = 300,
                            resultAmount = 1,
                            productionTime = 1,
                            requiredItens = {
                                ['capsulas'] = 1,
                                ['polvora'] = 1
                            }
                        },
                    }
                }
            }
        },
        ['craftingfaixapreta'] = {
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
                name = 'Crafting', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            }, 
            -- General Settings
            perm = "faixapreta.permissao", -- permissao para acessar o blip   
            craftingConfig = {
                ['municaopistola'] = {
                    icon = 'fad fa-sword',
                    name = 'Munição Pistolas',
                    executeAnimation = function()
                        ExecuteCommand("e mecanico2")
                    end,
                    stopAnimation = function()
                        vRP._stopAnim()
                    end,
                    itens = {
                        
                        ['colete'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 20,
                                ['linha'] = 20,
                                ['kevlar'] = 20
                            }
                        },
                        ['algema'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 40,
                                ['linha'] = 40,
                                ['kevlar'] = 40
                            }
                        },
                        ['capuz'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 30,
                                ['linha'] = 30,
                                ['kevlar'] = 30
                            }
                        },
                        ['lockpick'] = {
                            minAmount = 1,
                            maxAmount = 10,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 20,
                                ['linha'] = 20,
                                ['kevlar'] = 20
                            }
                        },
                        ['pendrive'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 5,
                            requiredItens = {
                                ['pano'] = 40,
                                ['linha'] = 40,
                                ['kevlar'] = 40
                            }
                        },
                        ['keycard'] = {
                            minAmount = 1,
                            maxAmount = 10,
                            resultAmount = 1,
                            productionTime = 3,
                            requiredItens = {
                                ['pano'] = 10,
                                ['linha'] = 10,
                                ['kevlar'] = 10
                            }
                        },
                        -- ['c4'] = {
                        --     minAmount = 1,
                        --     maxAmount = 5,
                        --     resultAmount = 1,
                        --     productionTime = 10,
                        --     requiredItens = {
                        --         ['pano'] = 80,
                        --         ['linha'] = 80,
                        --         ['kevlar'] = 80
                        --     }
                        -- },
                        ['placa'] = {
                            minAmount = 1,
                            maxAmount = 10,
                            resultAmount = 1,
                            productionTime = 3,
                            requiredItens = {
                                ['pano'] = 10,
                                ['linha'] = 10,
                                ['kevlar'] = 10
                            }
                        },
                        ['molas'] = {
                            minAmount = 10,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 3,
                            requiredItens = {
                                ['pano'] = 10,
                                ['linha'] = 10,
                                ['kevlar'] = 10
                            }
                        },
                        ['gatilho'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 15,
                                ['linha'] = 15,
                                ['kevlar'] = 15
                            }
                        },
                        ['placa-metal'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 20,
                                ['linha'] = 20,
                                ['kevlar'] = 20
                            }
                        },
                    }
                },
            }
        },
        ['craftingtdr'] = {
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
                name = 'Crafting', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            }, 
            -- General Settings
            perm = "pb.permissao", -- permissao para acessar o blip   
            craftingConfig = {
                ['municaopistola'] = {
                    icon = 'fad fa-sword',
                    name = 'Munição Pistolas',
                    executeAnimation = function()
                        ExecuteCommand("e mecanico2")
                    end,
                    stopAnimation = function()
                        vRP._stopAnim()
                    end,
                    itens = {
                        ['colete'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 20,
                                ['linha'] = 20,
                                ['kevlar'] = 20
                            }
                        },
                        ['algema'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 40,
                                ['linha'] = 40,
                                ['kevlar'] = 40
                            }
                        },
                        ['capuz'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 30,
                                ['linha'] = 30,
                                ['kevlar'] = 30
                            }
                        },
                        ['lockpick'] = {
                            minAmount = 1,
                            maxAmount = 10,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 20,
                                ['linha'] = 20,
                                ['kevlar'] = 20
                            }
                        },
                        ['pendrive'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 5,
                            requiredItens = {
                                ['pano'] = 40,
                                ['linha'] = 40,
                                ['kevlar'] = 40
                            }
                        },
                        ['keycard'] = {
                            minAmount = 1,
                            maxAmount = 10,
                            resultAmount = 1,
                            productionTime = 3,
                            requiredItens = {
                                ['pano'] = 10,
                                ['linha'] = 10,
                                ['kevlar'] = 10
                            }
                        },
                        -- ['c4'] = {
                        --     minAmount = 1,
                        --     maxAmount = 5,
                        --     resultAmount = 1,
                        --     productionTime = 10,
                        --     requiredItens = {
                        --         ['pano'] = 80,
                        --         ['linha'] = 80,
                        --         ['kevlar'] = 80
                        --     }
                        -- },
                        ['placa'] = {
                            minAmount = 1,
                            maxAmount = 10,
                            resultAmount = 1,
                            productionTime = 3,
                            requiredItens = {
                                ['pano'] = 10,
                                ['linha'] = 10,
                                ['kevlar'] = 10
                            }
                        },
                        ['molas'] = {
                            minAmount = 10,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 3,
                            requiredItens = {
                                ['pano'] = 10,
                                ['linha'] = 10,
                                ['kevlar'] = 10
                            }
                        },
                        ['gatilho'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 15,
                                ['linha'] = 15,
                                ['kevlar'] = 15
                            }
                        },
                        ['placa-metal'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 20,
                                ['linha'] = 20,
                                ['kevlar'] = 20
                            }
                        },
                    }
                },
            }
        },

        ['craftingcorda'] = {
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
                name = 'Crafting', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            }, 
            -- General Settings
            perm = "corda.permissao", -- permissao para acessar o blip   
            craftingConfig = {
                ['municaopistola'] = {
                    icon = 'fad fa-sword',
                    name = 'Munição Pistolas',
                    executeAnimation = function()
                        ExecuteCommand("e mecanico2")
                    end,
                    stopAnimation = function()
                        vRP._stopAnim()
                    end,
                    itens = {
                        ['corda'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['algodao'] = 10,
                            }
                        },
                    }
                },
            }
        },

        ['craftinglavagem'] = {
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
                name = 'Crafting', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            }, 
            -- General Settings
            perm = "lavagem.permissao", -- permissao para acessar o blip   
            craftingConfig = {
                ['municaopistola'] = {
                    icon = 'fad fa-sword',
                    name = 'Munição Pistolas',
                    executeAnimation = function()
                        ExecuteCommand("e mecanico2")
                    end,
                    stopAnimation = function()
                        vRP._stopAnim()
                    end,
                    itens = {
                        
                        ['100000'] = {
                            minAmount = 1,
                            maxAmount = 3,
                            resultAmount = 95000,
                            resultMoney = true,
                            productionTime = 10,
                            requiredItens = {
                                ['alvejante'] = 10,
                                ['dinheiro-sujer'] = 100000,
                            }
                        },
                        ['500000'] = {
                            minAmount = 1,
                            maxAmount = 3,
                            resultAmount = 475000,
                            resultMoney = true,
                            productionTime = 10,
                            requiredItens = {
                                ['alvejante'] = 12,
                                ['dinheiro-sujer'] = 500000,
                            }
                        },
                        ['1000000'] = {
                            minAmount = 1,
                            maxAmount = 3,
                            resultAmount = 950000,
                            resultMoney = true,
                            productionTime = 10,
                            requiredItens = {
                                ['alvejante'] = 14,
                                ['dinheiro-sujer'] = 1000000,
                            }
                        },
                        ['5000000'] = {
                            minAmount = 1,
                            maxAmount = 3,
                            resultAmount = 4750000,
                            resultMoney = true,
                            productionTime = 10,
                            requiredItens = {
                                ['alvejante'] = 16,
                                ['dinheiro-sujer'] = 5000000,
                            }
                        },
                        ['7000000'] = {
                            minAmount = 1,
                            maxAmount = 3,
                            resultAmount = 6650000,
                            resultMoney = true,
                            productionTime = 10,
                            requiredItens = {
                                ['alvejante'] = 18,
                                ['dinheiro-sujer'] = 7000000,
                            }
                        },
                    },
                },
            },
        },
        ['craftingtuga'] = {
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
                name = 'Crafting', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            }, 
            -- General Settings
            perm = "tuga.permissao", -- permissao para acessar o blip   
            craftingConfig = {
                ['municaopistola'] = {
                    icon = 'fad fa-sword',
                    name = 'Munição Pistolas',
                    executeAnimation = function()
                        ExecuteCommand("e mecanico2")
                    end,
                    stopAnimation = function()
                        vRP._stopAnim()
                    end,
                    itens = {
                        
                        ['colete'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 20,
                                ['linha'] = 20,
                                ['kevlar'] = 20
                            }
                        },
                        ['algema'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 40,
                                ['linha'] = 40,
                                ['kevlar'] = 40
                            }
                        },
                        ['capuz'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 30,
                                ['linha'] = 30,
                                ['kevlar'] = 30
                            }
                        },
                        ['lockpick'] = {
                            minAmount = 1,
                            maxAmount = 10,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 20,
                                ['linha'] = 20,
                                ['kevlar'] = 20
                            }
                        },
                        ['pendrive'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 40,
                                ['linha'] = 40,
                                ['kevlar'] = 40
                            }
                        },
                        ['keycard'] = {
                            minAmount = 1,
                            maxAmount = 10,
                            resultAmount = 1,
                            productionTime = 3,
                            requiredItens = {
                                ['pano'] = 10,
                                ['linha'] = 10,
                                ['kevlar'] = 10
                            }
                        },
                        -- ['c4'] = {
                        --     minAmount = 1,
                        --     maxAmount = 5,
                        --     resultAmount = 1,
                        --     productionTime = 10,
                        --     requiredItens = {
                        --         ['pano'] = 80,
                        --         ['linha'] = 80,
                        --         ['kevlar'] = 80
                        --     }
                        -- },
                        ['placa'] = {
                            minAmount = 1,
                            maxAmount = 10,
                            resultAmount = 1,
                            productionTime = 3,
                            requiredItens = {
                                ['pano'] = 10,
                                ['linha'] = 10,
                                ['kevlar'] = 10
                            }
                        },
                        ['molas'] = {
                            minAmount = 10,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 3,
                            requiredItens = {
                                ['pano'] = 10,
                                ['linha'] = 10,
                                ['kevlar'] = 10
                            }
                        },
                        ['gatilho'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 15,
                                ['linha'] = 15,
                                ['kevlar'] = 15
                            }
                        },
                        ['placa-metal'] = {
                            minAmount = 1,
                            maxAmount = 5,
                            resultAmount = 1,
                            productionTime = 4,
                            requiredItens = {
                                ['pano'] = 20,
                                ['linha'] = 20,
                                ['kevlar'] = 20
                            }
                        },
                    }
                },
            }
        }
    },

    locs = {
        -----------------------------------------------------------------------------------------------------------------------------------------
        -- [ FARM ARMAS ]
        -----------------------------------------------------------------------------------------------------------------------------------------
        {showBlip = false, coord = vector3(1247.91,-2578.78,42.83), config = 'craftingbratva'},
        {showBlip = false, coord = vector3(-886.04,-1464.4,7.67), config = 'craftingyakuza'},
        {showBlip = false, coord = vector3(-2679.15,1304.09,147.17), config = 'craftingcartel'},
        {showBlip = false, coord = vector3(1405.86,1137.79,109.74), config = 'craftingcv'},
        {showBlip = false, coord = vector3(-1490.66,834.15,176.99), config = 'craftingtdr2'},
        {showBlip = false, coord = vector3(1311.1,-741.9,66.27), config = 'craftingelements'},
        -----------------------------------------------------------------------------------------------------------------------------------------
        -- [ FARM MUNI ]
        -----------------------------------------------------------------------------------------------------------------------------------------
        {showBlip = false, coord = vector3(-1144.43,374.55,74.93), config = 'craftingcamorra'},
        {showBlip = false, coord = vector3(-2365.88,1744.2,215.48), config = 'craftingFranca'},
        {showBlip = false, coord = vector3(-3197.64,837.16,8.93), config = 'craftingturquia'},

        {showBlip = false, coord = vector3(-1870.15,2062.01,135.44), config = 'craftinggalaxy'},
        {showBlip = false, coord = vector3(-257.38,1531.26,337.37), config = 'craftingbloods'},
        -----------------------------------------------------------------------------------------------------------------------------------------
        -- [ FARM CONTRABANDO ]
        -----------------------------------------------------------------------------------------------------------------------------------------
        {showBlip = false, coord = vector3(-1832.7,430.42,118.37), config = 'craftingfaixapreta'},
        {showBlip = false, coord = vector3(1459.05,-988.99,51.75), config = 'craftingtdr'},
        {showBlip = false, coord = vector3(136.04,-1935.46,20.57), config = 'craftingtuga'},
        {showBlip = false, coord = vector3(2993.21,2674.54,75.57), config = 'craftingcn'},
        {showBlip = false, coord = vector3(1710.53,379.18,246.58), config = 'craftingmilicia'},
        -----------------------------------------------------------------------------------------------------------------------------------------
        -- [ FARM VAGOS ]
        -----------------------------------------------------------------------------------------------------------------------------------------
        {showBlip = false, coord = vector3(557.05,2679.35,35.55), config = 'craftingvagos'},
        {showBlip = false, coord = vector3(549.7,2685.32,35.56), config = 'craftingvagos'},
        {showBlip = false, coord = vector3(546.01,2682.36,35.05), config = 'craftingvagos'},
        {showBlip = false, coord = vector3(545.64,2686.21,35.05), config = 'craftingvagos'},
        -----------------------------------------------------------------------------------------------------------------------------------------
        -- [ FARM BALLAS ]
        -----------------------------------------------------------------------------------------------------------------------------------------
        {showBlip = false, coord = vector3(-134.47,-1609.59,35.03), config = 'craftingballas'},
        {showBlip = false, coord = vector3(2165.66,-54.07,245.08), config = 'craftingballas'},
        {showBlip = false, coord = vector3(2158.94,-50.91,245.1), config = 'craftingballas'},
        {showBlip = false, coord = vector3(2155.59,-45.98,245.01), config = 'craftingballas'},
        {showBlip = false, coord = vector3(2534.87,4115.42,31.47), config = 'craftingballas'},
        {showBlip = false, coord = vector3(2537.68,4121.18,31.47), config = 'craftingballas'},
        {showBlip = false, coord = vector3(2535.92,4117.58,31.47), config = 'craftingballas'},
        {showBlip = false, coord = vector3(2538.69,4123.39,31.47), config = 'craftingballas'},
        {showBlip = false, coord = vector3(2539.85,4125.81,31.47), config = 'craftingballas'},
        {showBlip = false, coord = vector3(2544.64,4123.37,31.47), config = 'craftingballas'},
        -----------------------------------------------------------------------------------------------------------------------------------------
        -- [ FARM VERDES ]
        -----------------------------------------------------------------------------------------------------------------------------------------
        {showBlip = false, coord = vector3(-101.26,995.39,235.75), config = 'craftingverdes'},
        -- {showBlip = false, coord = vector3(-104.55,996.07,235.78), config = 'craftingverdes'},
        -- {showBlip = false, coord = vector3(-102.9,998.0,235.75), config = 'craftingverdes'},
        -- {showBlip = false, coord = vector3(2856.71,4457.95,41.33), config = 'craftingverdes'},
        -- {showBlip = false, coord = vector3(2860.58,4463.9,41.33), config = 'craftingverdes'},
        -- {showBlip = false, coord = vector3(2863.4,4464.88,41.33), config = 'craftingverdes'},

        -----------------------------------------------------------------------------------------------------------------------------------------
        -- [ FARM PCC ]
        -----------------------------------------------------------------------------------------------------------------------------------------
        {showBlip = false, coord = vector3(3318.68,5137.75,19.76), config = 'craftingpcc'},

        -----------------------------------------------------------------------------------------------------------------------------------------
        -- [ FARM AZUL ]
        -----------------------------------------------------------------------------------------------------------------------------------------
        {showBlip = false, coord = vector3(-145.91,6301.3,25.07), config = 'craftingazul'},
        {showBlip = false, coord = vector3(-145.79,6310.72,25.08), config = 'craftingazul'},
        {showBlip = false, coord = vector3(-150.25,6311.81,24.58), config = 'craftingazul'},
        {showBlip = false, coord = vector3(-147.41,6314.21,24.61), config = 'craftingazul'},

        -----------------------------------------------------------------------------------------------------------------------------------------
        -- [ LAVAGEM ]
        -----------------------------------------------------------------------------------------------------------------------------------------
        {showBlip = false, coord = vector3(108.85,-1304.58,28.8), config = 'craftinglavagem'},
        {showBlip = false, coord = vector3(-1381.81,-614.51,31.49), config = 'craftinglavagem'},
        {showBlip = false, coord = vector3(393.08,-7.54,84.92), config = 'craftinglavagem'},
        {showBlip = false, coord = vector3(-807.2,167.74,76.73), config = 'craftinglavagem'},
        {showBlip = false, coord = vector3(-1034.55,312.19,71.66), config = 'craftinglavagem'},

        -----------------------------------------------------------------------------------------------------------------------------------------
        -- [ corda ]
        -----------------------------------------------------------------------------------------------------------------------------------------
        {showBlip = false, coord = vector3(475.01,-1310.01,29.2), config = 'craftingcorda'},--- tdj
        {showBlip = false, coord = vector3(991.92,-136.44,74.07), config = 'craftingcorda'},----motoclub
        {showBlip = false, coord = vector3(606.39,-3087.65,6.07), config = 'craftingcorda'},---triade


    }
})