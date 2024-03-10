NyoModules.registerConfig({
    config = {
        ['policia'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"policia.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['policia2'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"policia.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['hospitalnovo'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"paramedico.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },

        ['hospitalbombeiro'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"paramedico.permissao", "bombeiro.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },


        ['cartel'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"cartel.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },

        ['elements'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"elements.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },

        -- ['bahamaslav'] = {
        --     type = 'doorGates', -- não alterar
        --     input = 'doorgate', -- não alterar
        --     -- Input configuration
            
        --     -- marker = { -- set custom marker if the type is marker
        --     --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
        --     --     color = {0,255,0,75}, -- marker color (R,G,B,A)
        --     --     scale = {1.0, 1.0, 1.0},
        --     --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
        --     --     bobUpAndDown = false, -- marker bopUpAndDown
        --     --     faceCamera = false, -- marker faceCamera
        --     --     rotation = true, -- marker rotation
        --     --     custom = { -- Custom Marker
        --     --         active = false,
        --     --         dict = '',
        --     --         name = ''
        --     --     }
        --     -- },
        --     text3d = true,
        --     actionKey = 38,
        --     -- Map Configuration
        --     blip = {
        --         name = 'Porta', -- Name to display on the map!
        --         blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
        --         blipColor = 1, -- color id
        --         blipScale = 0.5, -- scale for blip
        --     },  

        --     -- General Settings
        --     perm = {"bahamaslav.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

        --     dataOpen = {
        --         animDict = 'veh@mower@base',
        --         anim = 'start_engine',
        --         animDictVehicle = '',
        --         animVehicle = '',

        --         miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

        --         openTime = 1, -- segundos para destrancar a porta
        --     },

        --     dataClose = {
        --         animDict = 'veh@mower@base',
        --         anim = 'start_engine',
        --         animDictVehicle = '',
        --         animVehicle = '',

        --         miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

        --         openTime = 1, -- segundos para trancar a porta
        --     },
            

        --     autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
        --     autoCloseTime = 10, -- tempo em minutos para se auto trancar
        -- },

        ['cv'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"cv.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['tuga'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"tuga.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['turquia'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"turquia.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['bahamas'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"bahamas.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['grove'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"grove.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['ballas'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"ballas.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['mad'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"italia.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['pb'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"pb.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['yakuza'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"yakuza.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['bloods'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"bloods.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['aztecas'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"aztecas.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['motoclub'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"motoclub.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['hells'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"hells.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['tequila1'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"tequila1.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['michael'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"sup.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['tdr'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"tdr.permissao", "cv.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['camorra'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"camorra.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['casavenda4'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"casavenda4.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['lavagem'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"lavagem.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['hospital'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"paramedico.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['vagos'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"vagos.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['azul'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"azul.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['bratva'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"bratva.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },

        ['milicia'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"milicia.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['franca'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"franca.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['cpx'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"bahamas.permissao", "nm.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },

        ['nm'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"nm.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['playboy'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"playboy.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },

        ['casailha'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"casailha.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },

        ['casalago1'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"casalago1.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },

        ['casalago2'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"casalago2.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },

        ['casapraia'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"casapraia.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['cn'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"cn.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['casavenda2'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"casavenda2.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['vanilla'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"franca.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },

        ['faixapreta'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"faixapreta.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['fxp'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"pb.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },

        ['hexa'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"hexa.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },

        ['camora'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"camora.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },

        ['casavenda3'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"casavenda3.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
        ['casavenda6'] = {
            type = 'doorGates', -- não alterar
            input = 'doorgate', -- não alterar
            -- Input configuration
            
            -- marker = { -- set custom marker if the type is marker
            --     id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
            --     color = {0,255,0,75}, -- marker color (R,G,B,A)
            --     scale = {1.0, 1.0, 1.0},
            --     rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
            --     bobUpAndDown = false, -- marker bopUpAndDown
            --     faceCamera = false, -- marker faceCamera
            --     rotation = true, -- marker rotation
            --     custom = { -- Custom Marker
            --         active = false,
            --         dict = '',
            --         name = ''
            --     }
            -- },
            text3d = true,
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Porta', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = {"casavenda6.permissao", "administrador.permissao"}, -- permissão para acessar a porta (vazio = todo mundo)

            dataOpen = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para abrir a porta ou vazio para keypress

                openTime = 1, -- segundos para destrancar a porta
            },

            dataClose = {
                animDict = 'veh@mower@base',
                anim = 'start_engine',
                animDictVehicle = '',
                animVehicle = '',

                miniGame = '', -- miniGame para fechar a porta ou vazio para keypress

                openTime = 1, -- segundos para trancar a porta
            },
            

            autoClose = true, -- (true para trancar automaticamente, false para não trancar automaticamente)
            autoCloseTime = 10, -- tempo em minutos para se auto trancar
        },
    },

    locs = {
        -- POLÍCIA
{showBlip = false, coord = vector3(-1127.24,388.74,70.75), heading = 359.29, config = 'camorra', hash = '-2139443164', group = '', drawText = true, lock = true, distance = 1, id = "D1"},
{showBlip = false, coord = vector3(958.16,-138.6,74.48), heading = 359.29, config = 'motoclub', hash = '741314661', group = '', drawText = true, lock = true, distance = 1, id = "D2"},
{showBlip = false, coord = vector3(-441.78,6004.28,31.72), heading = 359.29, config = 'policia', hash = '3342610948', group = '', drawText = true, lock = true, distance = 1, id = "D3"},
{showBlip = false, coord = vector3(-438.45,6007.65,31.72), heading = 359.29, config = 'policia', hash = '3342610948', group = '', drawText = true, lock = true, distance = 1, id = "D4"},
{showBlip = false, coord = vector3(2517.26,-333.97,94.10), heading = 359.29, config = 'policia', hash = '395979613', group = '', drawText = true, lock = true, distance = 1, id = "D5"},
{showBlip = false, coord = vector3(2517.80,-332.03,94.10), heading = 359.29, config = 'policia', hash = '395979613', group = '', drawText = true, lock = true, distance = 1, id = "D6"},
{showBlip = false, coord = vector3(2520.56,-329.28,94.10), heading = 359.29, config = 'policia', hash = '395979613', group = '', drawText = true, lock = true, distance = 1, id = "D7"},
{showBlip = false, coord = vector3(2523.40,-326.55,94.10), heading = 359.29, config = 'policia', hash = '395979613', group = '', drawText = true, lock = true, distance = 1, id = "D8"},
{showBlip = false, coord = vector3(2526.29,-323.66,94.10), heading = 359.29, config = 'policia', hash = '395979613', group = '', drawText = true, lock = true, distance = 1, id = "D9"},
{showBlip = false, coord = vector3(2528.28,-325.63,94.10), heading = 359.29, config = 'policia', hash = '395979613', group = '', drawText = true, lock = true, distance = 1, id = "D10"},
{showBlip = false, coord = vector3(2525.33,-328.42,94.10), heading = 359.29, config = 'policia', hash = '395979613', group = '', drawText = true, lock = true, distance = 1, id = "D12"},
{showBlip = false, coord = vector3(2522.47,-331.36,94.10), heading = 359.29, config = 'policia', hash = '395979613', group = '', drawText = true, lock = true, distance = 1, id = "D13"},
{showBlip = false, coord = vector3(2519.66,-334.16,94.10), heading = 359.29, config = 'policia', hash = '395979613', group = '', drawText = true, lock = true, distance = 1, id = "D14"},
{showBlip = false, coord = vector3(2507.05,-349.04,105.7), heading = 359.29, config = 'policia', hash = '395979613', group = '', drawText = true, lock = true, distance = 1, id = "D15"},
{showBlip = false, coord = vector3(2509.87,-352.04,105.7), heading = 359.29, config = 'policia', hash = '395979613', group = '', drawText = true, lock = true, distance = 1, id = "D16"},
{showBlip = false, coord = vector3(2507.97,-353.71,105.7), heading = 359.29, config = 'policia', hash = '395979613', group = '', drawText = true, lock = true, distance = 1, id = "D17"},
{showBlip = false, coord = vector3(2505.10,-348.73,105.7), heading = 359.29, config = 'policia', hash = '395979613', group = '', drawText = true, lock = true, distance = 1, id = "D18"},
{showBlip = false, coord = vector3(2505.05,-351.09,105.7), heading = 359.29, config = 'policia', hash = '395979613', group = '', drawText = true, lock = true, distance = 1, id = "D19"},
-- HOSPITAL
--{showBlip = false, coord = vector3(-442.93,-316.30,34.92), heading = 359.29, config = 'hospital', hash = '493136920', group = '', drawText = true, lock = true, distance = 1, id = "D20"},
{showBlip = false, coord = vector3(-451.72,-308.31,34.92), heading = 359.29, config = 'hospital', hash = '493136920', group = '', drawText = true, lock = true, distance = 1, id = "D21"},
--{showBlip = false, coord = vector3(-448.39,-316.77,34.92), heading = 359.29, config = 'hospital', hash = '493136920', group = '', drawText = true, lock = true, distance = 1, id = "D22"},
--{showBlip = false, coord = vector3(-449.41,-313.84,34.92), heading = 359.29, config = 'hospital', hash = '493136920', group = '', drawText = true, lock = true, distance = 1, id = "D23"},
{showBlip = false, coord = vector3(-452.96,-305.20,34.92), heading = 359.29, config = 'hospital', hash = '493136920', group = '', drawText = true, lock = true, distance = 1, id = "D24"},
{showBlip = false, coord = vector3(-455.22,-299.75,34.92), heading = 359.29, config = 'hospital', hash = '493136920', group = '', drawText = true, lock = true, distance = 1, id = "D25"},
{showBlip = false, coord = vector3(-457.35,-294.61,34.92), heading = 359.29, config = 'hospital', hash = '493136920', group = '', drawText = true, lock = true, distance = 1, id = "D26"},
{showBlip = false, coord = vector3(-452.83,-292.33,34.92), heading = 359.29, config = 'hospital', hash = '493136920', group = '', drawText = true, lock = true, distance = 1, id = "D27"},
--{showBlip = false, coord = vector3(-449.44,-300.51,34.92), heading = 359.29, config = 'hospital', hash = '493136920', group = '', drawText = true, lock = true, distance = 1, id = "D28"},
--{showBlip = false, coord = vector3(-447.14,-306.19,34.92), heading = 359.29, config = 'hospital', hash = '493136920', group = '', drawText = true, lock = true, distance = 1, id = "D29"},
{showBlip = false, coord = vector3(-1091.52,368.06,68.7), heading = 359.29, config = 'camorra', hash = '1930237257', group = '', drawText = true, lock = true, distance = 1, id = "D30"},
-- DROGAS
--{showBlip = false, coord = vector3(-1096.53,4949.54,218.47), heading = 359.29, config = 'ballas', hash = '-147325430', group = '', drawText = true, lock = true, distance = 1, id = "D31"},
--{showBlip = false, coord = vector3(97.32,6327.68,31.38), heading = 359.29, config = 'grove', hash = '-147325430', group = '', drawText = true, lock = true, distance = 1, id = "D32"},
--{showBlip = false, coord = vector3(1483.59,6392.12,23.34), heading = 359.29, config = 'vagos', hash = '-147325430', group = '', drawText = true, lock = true, distance = 1, id = "D33"},
-- ARMAS 
{showBlip = false, coord = vector3(-2588.28,1910.88,167.5), heading = 359.29, config = 'bratva', hash = '308207762', group = '', drawText = true, lock = true, distance = 1, id = "D34"},
-- {showBlip = false, coord = vector3(-2667.38,1326.25,147.45), heading = 359.29, config = 'elements', hash = '1901183774', group = '', drawText = true, lock = true, distance = 1, id = "D35"},
-- {showBlip = false, coord = vector3(-2667.38,1330.10,147.44), heading = 359.29, config = 'elements', hash = '-147325430', group = '', drawText = false, lock = true, distance = 1, id = "D36"},
{showBlip = false, coord = vector3(-948.72,-1477.66,6.79), heading = 359.29, config = 'yakuza', hash = '-1653461382', group = '', drawText = true, lock = true, distance = 1, id = "D37"},
{showBlip = false, coord = vector3(-949.55,-1475.06,6.79), heading = 359.29, config = 'yakuza', hash = '-292728657', group = '', drawText = true, lock = true, distance = 1, id = "D38"},
-- MUNIÇÃO
{showBlip = false, coord = vector3(-1392.41,-592.69,30.32), heading = 359.29, config = 'bahamas', hash = '-131296141', group = '', drawText = true, lock = true, distance = 1, id = "D39"},
{showBlip = false, coord = vector3(-1393.11,-591.65,30.32), heading = 359.29, config = 'bahamas', hash = '-131296141', group = '', drawText = true, lock = true, distance = 1, id = "D40"},
--{showBlip = false, coord = vector3(355.14,301.67,103.76), heading = 359.29, config = 'aztecas', hash = '-1989765534', group = '', drawText = true, lock = true, distance = 1, id = "D41"},
{showBlip = false, coord = vector3(-2603.26,1686.61,142.67), heading = 359.29, config = 'camora', hash = '-951412226', group = '', drawText = true, lock = true, distance = 1, id = "D42"},
-- CONTRABANDO
{showBlip = false, coord = vector3(1406.97,1128.04,114.34), heading = 359.29, config = 'cv', hash = '262671971', group = '', drawText = true, lock = true, distance = 1, id = "D43"},
--{showBlip = false, coord = vector3(-1864.51,2059.77,141.21), heading = 359.29, config = 'pb', hash = '-1141522158', group = '', drawText = true, lock = true, distance = 1, id = "D44"},
-- LAVAGEM
-- CASAS MENSAIS
-- {showBlip = false, coord = vector3(-1536.70,131.13,57.38), heading = 359.29, config = 'playboy', hash = '1330109535', group = '', drawText = true, lock = true, distance = 1, id = "D45"},
-- {showBlip = false, coord = vector3(-1522.49,143.22,55.67), heading = 359.29, config = 'playboy', hash = '-1176227434', group = '', drawText = true, lock = true, distance = 1, id = "D46"},
-- {showBlip = false, coord = vector3(-1504.57,110.84,55.67), heading = 359.29, config = 'playboy', hash = '-1176227434', group = '', drawText = true, lock = true, distance = 1, id = "D47"},
-- {showBlip = false, coord = vector3(-1526.51,118.96,55.67), heading = 359.29, config = 'playboy', hash = '-1176227434', group = 'playboy1', drawText = true, lock = true, distance = 1, id = "D48"},
-- {showBlip = false, coord = vector3(-1526.51,118.96,55.67), heading = 359.29, config = 'playboy', hash = '-1176227434', group = 'playboy1', drawText = false, lock = true, distance = 1, id = "D49"},
-- {showBlip = false, coord = vector3(-1441.40,172.57,55.82), heading = 359.29, config = 'playboy', hash = '-1859471240', group = '', drawText = true, lock = true, distance = 1, id = "D50"},
-- {showBlip = false, coord = vector3(-1434.49,235.58,59.97), heading = 359.29, config = 'playboy', hash = '-1859471240', group = '', drawText = true, lock = true, distance = 1, id = "D51"},
-- {showBlip = false, coord = vector3(-1579.06,152.87,58.68), heading = 359.29, config = 'playboy', hash = '-1859471240', group = '', drawText = true, lock = true, distance = 1, id = "D52"},
-- {showBlip = false, coord = vector3(-1461.71,65.85,52.93), heading = 359.29, config = 'playboy', hash = '-1859471240', group = '', drawText = true, lock = true, distance = 1, id = "D53"},
-- {showBlip = false, coord = vector3(-1501.04,103.69,55.68), heading = 359.29, config = 'playboy', hash = '-1563640173', group = '', drawText = true, lock = true, distance = 1, id = "D54"},
-- {showBlip = false, coord = vector3(-1986.94,-512.39,12.18), heading = 359.29, config = 'casapraia', hash = '308207762', group = '', drawText = true, lock = true, distance = 1, id = "D55"},
-- {showBlip = false, coord = vector3(-1986.90,-502.82,12.18), heading = 359.29, config = 'casapraia', hash = '1980513646', group = '', drawText = true, lock = true, distance = 1, id = "D56"},
-- TDR
{showBlip = false, coord = vector3(-1804.42,436.69,128.84), heading = 359.29, config = 'casavenda4', hash = '1558415341', group = '', drawText = true, lock = true, distance = 1, id = "D57"},
{showBlip = false, coord = vector3(-1805.42,436.67,128.84), heading = 359.29, config = 'casavenda4', hash = '1558415341', group = '', drawText = true, lock = true, distance = 1, id = "D58"},
{showBlip = false, coord = vector3(-1804.36,428.42,128.73), heading = 359.29, config = 'casavenda4', hash = '-627047580', group = '', drawText = true, lock = true, distance = 1, id = "D59"},
{showBlip = false, coord = vector3(-1805.19,428.54,128.73), heading = 359.29, config = 'casavenda4', hash = '-627047580', group = '', drawText = true, lock = true, distance = 1, id = "D60"},
-- {showBlip = false, coord = vector3(-1788.06,435.53,128.31), heading = 359.29, config = 'casavenda4', hash = '1100960097', group = '', drawText = true, lock = true, distance = 1, id = "D61"},
-- {showBlip = false, coord = vector3(-1788.0,434.18,128.31), heading = 359.29, config = 'casavenda4', hash = '1100960097', group = '', drawText = true, lock = true, distance = 1, id = "D62"},
{showBlip = false, coord = vector3(-1816.55,423.07,128.31), heading = 359.29, config = 'casavenda4', hash = '1314286287', group = '', drawText = true, lock = true, distance = 1, id = "D63"},
{showBlip = false, coord = vector3(-1815.15,423.19,128.31), heading = 359.29, config = 'casavenda4', hash = '1314286287', group = '', drawText = true, lock = true, distance = 1, id = "D64"},
-- {showBlip = false, coord = vector3(-1817.09,427.96,132.31), heading = 359.29, config = 'casavenda4', hash = '1100960097', group = '', drawText = true, lock = true, distance = 1, id = "D65"},
-- {showBlip = false, coord = vector3(-1815.8,427.95,132.31), heading = 359.29, config = 'casavenda4', hash = '1100960097', group = '', drawText = true, lock = true, distance = 1, id = "D66"},
{showBlip = false, coord = vector3(128.7,-1298.46,29.24), heading = 359.29, config = 'vanilla', hash = '-1116041313', group = '', drawText = true, lock = true, distance = 1, id = "D67"},
--{showBlip = false, coord = vector3(569.76,-3119.87,18.77), heading = 359.29, config = 'fxp', hash = '933053701', group = '', drawText = true, lock = true, distance = 1, id = "D68"},
--{showBlip = false, coord = vector3(568.55,-3119.82,18.77), heading = 359.29, config = 'fxp', hash = '933053701', group = '', drawText = true, lock = true, distance = 1, id = "D69"},
-- POLÍCIA 2
-- {showBlip = false, coord = vector3(-916.4,-2038.42,9.41), heading = 359.29, config = 'policia2', hash = '-1316777937', group = 'portas1', drawText = true, lock = true, distance = 1, id = "D70"}, 
-- {showBlip = false, coord = vector3(-915.1,-2037.16,9.41), heading = 359.29, config = 'policia2', hash = '-1316777937', group = 'portas1', drawText = true, lock = true, distance = 1, id = "D71"}, 
-- {showBlip = false, coord = vector3(-925.57,-2034.93,9.41), heading = 359.29, config = 'policia2', hash = '1307986194', group = 'portas2', drawText = true, lock = true, distance = 1, id = "D72"}, 
-- {showBlip = false, coord = vector3(-926.48,-2034.06,9.41), heading = 359.29, config = 'policia2', hash = '1307986194', group = 'portas2', drawText = true, lock = true, distance = 1, id = "D73"}, 
-- {showBlip = false, coord = vector3(-927.9,-2035.06,9.41), heading = 359.29, config = 'policia2', hash = '1307986194', group = '', drawText = true, lock = true, distance = 1, id = "D74"}, 
-- {showBlip = false, coord = vector3(-927.09,-2037.01,9.41), heading = 359.29, config = 'policia2', hash = '1307986194', group = 'portas3', drawText = true, lock = true, distance = 1, id = "D75"}, 
-- {showBlip = false, coord = vector3(-928.01,-2037.82,9.41), heading = 359.29, config = 'policia2', hash = '1307986194', group = 'portas3', drawText = true, lock = true, distance = 1, id = "D76"}, 
-- {showBlip = false, coord = vector3(-929.92,-2042.84,9.41), heading = 359.29, config = 'policia2', hash = '1307986194', group = '', drawText = true, lock = true, distance = 1, id = "D77"}, 
-- {showBlip = false, coord = vector3(-931.89,-2044.22,9.41), heading = 359.29, config = 'policia2', hash = '-806761221', group = '', drawText = true, lock = true, distance = 1, id = "D78"}, 
-- {showBlip = false, coord = vector3(-935.93,-2040.27,9.41), heading = 359.29, config = 'policia2', hash = '1307986194', group = 'portas4', drawText = true, lock = true, distance = 1, id = "D79"},  
-- {showBlip = false, coord = vector3(-936.65,-2039.47,9.41), heading = 359.29, config = 'policia2', hash = '1307986194', group = 'portas4', drawText = true, lock = true, distance = 1, id = "D80"},  
-- {showBlip = false, coord = vector3(-938.2,-2037.72,9.41), heading = 359.29, config = 'policia2', hash = '855881614', group = '', drawText = true, lock = true, distance = 1, id = "D81"}, 
-- {showBlip = false, coord = vector3(-959.7,-2052.38,9.41), heading = 359.29, config = 'policia2', hash = '-1291439697', group = '', drawText = true, lock = true, distance = 1, id = "D82"},
-- {showBlip = false, coord = vector3(-955.11,-2057.89,9.41), heading = 359.29, config = 'policia2', hash = '1307986194', group = 'portas5', drawText = true, lock = true, distance = 1, id = "D83"},
-- {showBlip = false, coord = vector3(-954.28,-2058.71,9.41), heading = 359.29, config = 'policia2', hash = '1307986194', group = 'portas5', drawText = true, lock = true, distance = 1, id = "D84"},
-- {showBlip = false, coord = vector3(-937.68,-2049.05,6.1), heading = 359.29, config = 'policia2', hash = '-806761221', group = '', drawText = true, lock = true, distance = 1, id = "D85"},
-- {showBlip = false, coord = vector3(-943.14,-2054.68,6.1), heading = 359.29, config = 'policia2', hash = '-806761221', group = '', drawText = true, lock = true, distance = 1, id = "D86"},
-- {showBlip = false, coord = vector3(-952.21,-2049.39,6.1), heading = 359.29, config = 'policia2', hash = '-806761221', group = '', drawText = true, lock = true, distance = 1, id = "D87"},
-- {showBlip = false, coord = vector3(-939.65,-2045.81,6.1), heading = 359.29, config = 'policia2', hash = '-806761221', group = '', drawText = true, lock = true, distance = 1, id = "D88"},
-- {showBlip = false, coord = vector3(-946.18,-2039.18,6.1), heading = 359.29, config = 'policia2', hash = '-806761221', group = '', drawText = true, lock = true, distance = 1, id = "D89"},
-- HOSPITAL NOVO 
-- {showBlip = false, coord = vector3(-669.37,330.55,83.09), heading = 359.29, config = 'hospitalnovo', hash = '854291622', group = '', drawText = true, lock = true, distance = 1, id = "D90"},
-- {showBlip = false, coord = vector3(-667.3,326.39,83.09), heading = 359.29, config = 'hospitalnovo', hash = '854291622', group = '', drawText = true, lock = true, distance = 1, id = "D91"}, 
-- {showBlip = false, coord = vector3(-678.88,341.11,83.11), heading = 359.29, config = 'hospitalnovo', hash = '-1700911976', group = 'portas6', drawText = true, lock = true, distance = 1, id = "D92"},
-- {showBlip = false, coord = vector3(-678.83,340.2,83.09), heading = 359.29, config = 'hospitalnovo', hash = '-434783486', group = 'portas6', drawText = true, lock = true, distance = 1, id = "D93"},
-- {showBlip = false, coord = vector3(-688.26,338.08,83.09), heading = 359.29, config = 'hospitalnovo', hash = '-1700911976', group = 'portas7', drawText = true, lock = true, distance = 1, id = "D94"},
-- {showBlip = false, coord = vector3(-689.67,338.24,83.09), heading = 359.29, config = 'hospitalnovo', hash = '-434783486', group = 'portas7', drawText = true, lock = true, distance = 1, id = "D95"},
-- {showBlip = false, coord = vector3(-706.41,341.04,83.09), heading = 359.29, config = 'hospitalnovo', hash = '854291622', group = '', drawText = true, lock = true, distance = 1, id = "D96"},
-- {showBlip = false, coord = vector3(-731.89,347.46,83.09), heading = 359.29, config = 'hospitalnovo', hash = '854291622', group = '', drawText = true, lock = true, distance = 1, id = "D97"},
-- {showBlip = false, coord = vector3(-711.22,345.88,83.09), heading = 359.29, config = 'hospitalnovo', hash = '854291622', group = '', drawText = true, lock = true, distance = 1, id = "D98"},
-- BUNKER DE ARMA
{showBlip = false, coord = vector3(1704.39,386.25,242.44), heading = 359.29, config = 'milicia', hash = '-1428622127', group = '', drawText = true, lock = true, distance = 1, id = "D99"},
{showBlip = false, coord = vector3(2904.98,4406.59,50.29), heading = 359.29, config = 'elements', hash = '-267021114', group = '', drawText = true, lock = true, distance = 1, id = "D100"},
--{showBlip = false, coord = vector3(-1490.46,833.89,176.99), heading = 359.29, config = 'tdr', hash = '-267021114', group = '', drawText = true, lock = true, distance = 1, id = "D101"},
--{showBlip = false, coord = vector3(-309.82,2794.94,59.45), heading = 359.29, config = 'yakuza', hash = '-267021114', group = '', drawText = true, lock = true, distance = 1, id = "D102"},
-- BUNKER DE DROGAS
{showBlip = false, coord = vector3(2522.07,4124.28,38.67), heading = 359.29, config = 'ballas', hash = '1427451548', group = '', drawText = true, lock = true, distance = 1, id = "D103"},
{showBlip = false, coord = vector3(557.3,2666.24,42.25), heading = 359.29, config = 'vagos', hash = '1427451548', group = '', drawText = true, lock = true, distance = 1, id = "D104"},
{showBlip = false, coord = vector3(2848.98,4450.27,48.52), heading = 359.29, config = 'grove', hash = '1427451548', group = '', drawText = true, lock = true, distance = 1, id = "D105"},
{showBlip = false, coord = vector3(-156.06,6293.14,31.78), heading = 359.29, config = 'azul', hash = '1427451548', group = '', drawText = true, lock = true, distance = 1, id = "D106"},
-- LAVAGEM DE DINHEIRO 
{showBlip = false, coord = vector3(449.78,-1981.16,24.49), heading = 359.29, config = 'cpx', hash = '1427451548', group = '', drawText = true, lock = true, distance = 1, id = "D107"},
{showBlip = false, coord = vector3(1384.97,-2080.36,52.7), heading = 359.29, config = 'lavagem', hash = '1427451548', group = '', drawText = true, lock = true, distance = 1, id = "D108"}, 
{showBlip = false, coord = vector3(-1531.07,153.24,55.65), heading = 359.29, config = 'playboy', hash = '-1415080675', group = '', drawText = true, lock = true, distance = 1, id = "D109"}, 

{showBlip = false, coord = vector3(1390.72,1131.91,114.34), heading = 359.29, config = 'nm', hash = '-1032171637', group = 'bloodsss', drawText = false, lock = true, distance = 1, id = "D110"},
{showBlip = false, coord = vector3(1390.6,1132.61,114.34), heading = 359.29, config = 'nm', hash = '-52575179', group = 'bloodsss', drawText = true, lock = true, distance = 1, id = "D111"},
{showBlip = false, coord = vector3(377.52,268.47,94.98), heading = 359.29, config = 'aztecas', hash = '-1555108147', group = '', drawText = true, lock = true, distance = 1, id = "D112"},
{showBlip = false, coord = vector3(377.59,268.43,91.19), heading = 359.29, config = 'aztecas', hash = '-1989765534', group = '', drawText = true, lock = true, distance = 1, id = "D113"},
-- CASA ILHA
{showBlip = false, coord = vector3(-5861.97,1150.81,8.0), heading = 359.29, config = 'casailha', hash = '-415922858', group = 'portailha1', drawText = true, lock = true, distance = 1, id = "D114"},
{showBlip = false, coord = vector3(-5862.23,1151.87,8.01), heading = 359.29, config = 'casailha', hash = '-415922858', group = 'portailha1', drawText = true, lock = true, distance = 1, id = "D115"}, 
{showBlip = false, coord = vector3(-5872.73,1162.75,8.01), heading = 359.29, config = 'casailha', hash = '1901651314', group = '', drawText = true, lock = true, distance = 1, id = "D116"},  
-- CASA LAGO 1
{showBlip = false, coord = vector3(-112.41,985.68,235.76), heading = 359.29, config = 'grove', hash = '-2146494197', group = 'portalago1', drawText = true, lock = true, distance = 1, id = "D117"}, 
{showBlip = false, coord = vector3(-112.55,986.44,235.76), heading = 359.29, config = 'grove', hash = '-2146494197', group = 'portalago1', drawText = true, lock = true, distance = 1, id = "D118"},
{showBlip = false, coord = vector3(-105.19,976.74,235.76), heading = 359.29, config = 'grove', hash = '-435821409', group = 'portalago2', drawText = true, lock = true, distance = 1, id = "D119"},
{showBlip = false, coord = vector3(-104.32,977.01,235.76), heading = 359.29, config = 'grove', hash = '-435821409', group = 'portalago2', drawText = true, lock = true, distance = 1, id = "D120"},
{showBlip = false, coord = vector3(-111.72,999.01,235.76), heading = 359.29, config = 'grove', hash = '-435821409', group = 'portalago3', drawText = true, lock = true, distance = 1, id = "D121"},
{showBlip = false, coord = vector3(-110.46,999.35,235.76), heading = 359.29, config = 'grove', hash = '-435821409', group = 'portalago3', drawText = true, lock = true, distance = 1, id = "D122"},
{showBlip = false, coord = vector3(-97.17,989.46,235.76), heading = 359.29, config = 'grove', hash = '-435821409', group = 'portalago4', drawText = true, lock = true, distance = 1, id = "D123"},
{showBlip = false, coord = vector3(-98.24,989.17,235.76), heading = 359.29, config = 'grove', hash = '-435821409', group = 'portalago4', drawText = true, lock = true, distance = 1, id = "D124"},
{showBlip = false, coord = vector3(-102.77,1011.76,235.77), heading = 359.29, config = 'grove', hash = '-435821409', group = 'portalago5', drawText = true, lock = true, distance = 1, id = "D125"},
{showBlip = false, coord = vector3(-102.37,1010.62,235.77), heading = 359.29, config = 'grove', hash = '-435821409', group = 'portalago5', drawText = true, lock = true, distance = 1, id = "D126"},
{showBlip = false, coord = vector3(-70.39,1008.31,234.4), heading = 359.29, config = 'grove', hash = '-435821409', group = 'portalago6', drawText = true, lock = true, distance = 1, id = "D127"},
{showBlip = false, coord = vector3(-71.33,1009.36,234.4), heading = 359.29, config = 'grove', hash = '-435821409', group = 'portalago6', drawText = true, lock = true, distance = 1, id = "D128"}, 
{showBlip = false, coord = vector3(-133.62,971.42,235.81), heading = 359.29, config = 'grove', hash = '-1249591818', group = 'portalago7', drawText = true, lock = true, distance = 1, id = "D129"},
{showBlip = false, coord = vector3(-137.39,973.07,235.8), heading = 359.29, config = 'grove', hash = '546378757', group = 'portalago7', drawText = true, lock = true, distance = 1, id = "D130"},
{showBlip = false, coord = vector3(-67.03,987.18,234.4), heading = 359.29, config = 'grove', hash = '-435821409', group = 'portalago9', drawText = true, lock = true, distance = 1, id = "D131"},
{showBlip = false, coord = vector3(-67.95,987.82,234.4), heading = 359.29, config = 'grove', hash = '-435821409', group = 'portalago9', drawText = true, lock = true, distance = 1, id = "D132"},
{showBlip = false, coord = vector3(-62.09,998.02,234.44), heading = 359.29, config = 'grove', hash = '-2146494197', group = 'portalago10', drawText = true, lock = true, distance = 1, id = "D133"},
{showBlip = false, coord = vector3(-62.76,998.42,234.44), heading = 359.29, config = 'grove', hash = '-2146494197', group = 'portalago10', drawText = true, lock = true, distance = 1, id = "D134"},
-- CASA LAGO 2
-- {showBlip = false, coord = vector3(-85.34,834.83,235.93), heading = 359.29, config = 'casalago2', hash = '110411286', group = '', drawText = true, lock = true, distance = 1, id = "D135"},
-- {showBlip = false, coord = vector3(-103.61,849.65,235.61), heading = 359.29, config = 'cv', hash = '546378757', group = 'portalago8', drawText = true, lock = true, distance = 1, id = "D136"},
-- {showBlip = false, coord = vector3(-106.36,850.9,235.58), heading = 359.29, config = 'cv', hash = '-1249591818', group = 'portalago8', drawText = true, lock = true, distance = 1, id = "D137"},
{showBlip = false, coord = vector3(-85.34,834.83,235.93), heading = 359.29, config = 'cv', hash = '110411286', group = '', drawText = true, lock = true, distance = 1, id = "D135"},
{showBlip = false, coord = vector3(-102.85,849.24,235.56), heading = 359.29, config = 'cv', hash = '546378757', group = 'cv', drawText = true, lock = true, distance = 1, id = "D136"},
{showBlip = false, coord = vector3(-106.36,850.9,235.58), heading = 359.29, config = 'cv', hash = '-1249591818', group = 'cv', drawText = true, lock = true, distance = 1, id = "D137"},

{showBlip = false, coord = vector3(-956.25,-2048.7,9.41), heading = 359.29, config = 'policia2', hash = '-1291439697', group = '', drawText = true, lock = true, distance = 1, id = "D138"},
{showBlip = false, coord = vector3(-952.93,-2052.1,9.41), heading = 359.29, config = 'policia2', hash = '-1291439697', group = '', drawText = true, lock = true, distance = 1, id = "D139"},

{showBlip = false, coord = vector3(-719.94,344.99,83.09), heading = 359.29, config = 'hospitalnovo', hash = '-1700911976', group = 'portas8', drawText = true, lock = true, distance = 1, id = "D140"},
{showBlip = false, coord = vector3(-720.11,343.64,83.09), heading = 359.29, config = 'hospitalnovo', hash = '-434783486', group = 'portas8', drawText = true, lock = true, distance = 1, id = "D141"},
 -- CASA ILHA
{showBlip = false, coord = vector3(-5871.63,1151.76,13.15), heading = 359.29, config = 'casailha', hash = '190165314', group = 'portailha2', drawText = true, lock = true, distance = 1, id = "D142"},
{showBlip = false, coord = vector3(-5861.97,1150.81,8.0), heading = 359.29, config = 'casailha', hash = '190165314', group = 'portailha2', drawText = true, lock = true, distance = 1, id = "D143"},

-- HOSPITAL NOVO  NOVO 
{showBlip = false, coord = vector3(1144.71,-1562.73,35.39), heading = 359.29, config = 'hospitalnovo', hash = '1412301793', group = '', drawText = true, lock = true, distance = 1, id = "D144"},
{showBlip = false, coord = vector3(1144.75,-1565.82,35.39), heading = 359.29, config = 'hospitalnovo', hash = '1412301793', group = '', drawText = true, lock = true, distance = 1, id = "D145"},
{showBlip = false, coord = vector3(1141.3,-1573.28,35.39), heading = 359.29, config = 'hospitalnovo', hash = '1412301793', group = '', drawText = true, lock = true, distance = 1, id = "D146"},
{showBlip = false, coord = vector3(1141.16,-1574.21,35.39), heading = 359.29, config = 'hospitalnovo', hash = '1412301793', group = '', drawText = true, lock = true, distance = 1, id = "D147"},

{showBlip = false, coord = vector3(1142.99,-1557.53,35.39), heading = 359.29, config = 'hospitalnovo', hash = '-135739026', group = '', drawText = true, lock = true, distance = 1, id = "D148"},
{showBlip = false, coord = vector3(1142.02,-1557.56,35.39), heading = 359.29, config = 'hospitalnovo', hash = '-135739026', group = '', drawText = true, lock = true, distance = 1, id = "D149"},
{showBlip = false, coord = vector3(1134.04,-1558.25,35.39), heading = 359.29, config = 'hospitalnovo', hash = '-135739026', group = '', drawText = true, lock = true, distance = 1, id = "D150"},
{showBlip = false, coord = vector3(1134.12,-1559.4,35.39), heading = 359.29, config = 'hospitalnovo', hash = '-135739026', group = '', drawText = true, lock = true, distance = 1, id = "D151"},
{showBlip = false, coord = vector3(1152.47,-1579.88,35.21), heading = 359.29, config = 'hospitalnovo', hash = '1412301793', group = '', drawText = true, lock = true, distance = 1, id = "D152"},
{showBlip = false, coord = vector3(1121.24,-1529.48,34.85), heading = 359.29, config = 'hospitalnovo', hash = '-85117650', group = '', drawText = true, lock = true, distance = 1, id = "D153"},

-- BASE NOVA franca
{showBlip = false, coord = vector3(965.66,-1629.97,30.13), heading = 359.29, config = 'franca', hash = '1900075414', group = '', drawText = true, lock = true, distance = 1, id = "D154"},

-- CARTEL CORRECAO
{showBlip = false, coord = vector3(491.48,-1410.44,29.3), heading = 359.29, config = 'hells', hash = '-1234764774', group = '', drawText = true, lock = true, distance = 1, id = "D155"},
 {showBlip = false, coord = vector3(486.68,-1409.09,29.28), heading = 359.29, config = 'hells', hash = '-1234764774', group = '', drawText = true, lock = true, distance = 1, id = "D156"},
-- FAVELAS NOVAS
{showBlip = false, coord = vector3(142.95,1900.79,166.09), heading = 359.29, config = 'grove', hash = '1185512375', group = '', drawText = true, lock = true, distance = 1, id = "D157"},
{showBlip = false, coord = vector3(272.4,1717.4,236.08), heading = 359.29, config = 'grove', hash = '1185512375', group = '', drawText = true, lock = true, distance = 1, id = "D158"},
{showBlip = false, coord = vector3(-232.85,2087.07,137.88), heading = 359.29, config = 'azul', hash = '1185512375', group = '', drawText = true, lock = true, distance = 1, id = "D159"},
{showBlip = false, coord = vector3(-195.9,1906.94,195.56), heading = 359.29, config = 'azul', hash = '1185512375', group = '', drawText = true, lock = true, distance = 1, id = "D160"},
{showBlip = false, coord = vector3(817.76,2088.36,66.02), heading = 359.29, config = 'vagos', hash = '1185512375', group = '', drawText = true, lock = true, distance = 1, id = "D161"},
{showBlip = false, coord = vector3(945.82,2025.05,63.39), heading = 359.29, config = 'vagos', hash = '1185512375', group = '', drawText = true, lock = true, distance = 1, id = "D162"},
{showBlip = false, coord = vector3(781.61,1963.05,105.08), heading = 359.29, config = 'vagos', hash = '1185512375', group = '', drawText = true, lock = true, distance = 1, id = "D163"},
{showBlip = false, coord = vector3(1248.94,1973.82,73.95), heading = 359.29, config = 'ballas', hash = '1185512375', group = '', drawText = true, lock = true, distance = 1, id = "D164"},
{showBlip = false, coord = vector3(1456.44,1825.96,107.15), heading = 359.29, config = 'ballas', hash = '1185512375', group = '', drawText = true, lock = true, distance = 1, id = "D165"},
{showBlip = false, coord = vector3(1442.25,1965.99,118.18), heading = 359.29, config = 'ballas', hash = '1185512375', group = '', drawText = true, lock = true, distance = 1, id = "D166"},
{showBlip = false, coord = vector3(-1548.68,4717.28,47.65), heading = 359.29, config = 'mad', hash = '1185512375', group = '', drawText = true, lock = true, distance = 1, id = "D167"},
{showBlip = false, coord = vector3(-1498.8,4954.46,64.05), heading = 359.29, config = 'mad', hash = '1185512375', group = '', drawText = true, lock = true, distance = 1, id = "D168"}, 
{showBlip = false, coord = vector3(-3135.4,795.42,17.3), heading = 359.29, config = 'turquia', hash = '1286535678', group = '', drawText = true, lock = true, distance = 1, id = "D169"},

{showBlip = false, coord = vector3(1282.36,-2599.78,45.87), heading = 359.29, config = 'hells', hash = '1286535678', group = '', drawText = true, lock = true, distance = 1, id = "D170"},
{showBlip = false, coord = vector3(1468.12,-2584.15,48.71), heading = 359.29, config = 'hells', hash = '1286535678', group = '', drawText = true, lock = true, distance = 1, id = "D171"},

{showBlip = false, coord = vector3(1690.0,-2109.27,107.06), heading = 359.29, config = 'motoclub', hash = '1185512375', group = '', drawText = true, lock = true, distance = 1, id = "D172"},
{showBlip = false, coord = vector3(1714.48,-2057.39,107.72), heading = 359.29, config = 'motoclub', hash = '1185512375', group = '', drawText = true, lock = true, distance = 1, id = "D173"},
{showBlip = false, coord = vector3(1678.83,-2024.51,100.8), heading = 359.29, config = 'motoclub', hash = '1185512375', group = '', drawText = true, lock = true, distance = 1, id = "D174"},
{showBlip = false, coord = vector3(1554.44,-2238.77,80.79), heading = 359.29, config = 'motoclub', hash = '1185512375', group = '', drawText = true, lock = true, distance = 1, id = "D175"},
{showBlip = false, coord = vector3(917.74,2078.15,57.19), heading = 359.29, config = 'vagos', hash = '1185512375', group = '', drawText = true, lock = true, distance = 1, id = "D176"},
{showBlip = false, coord = vector3(-69.08,823.97,235.73), heading = 359.29, config = 'cv', hash = '-1119680854', group = '', drawText = true, lock = true, distance = 1, id = "D177"},
{showBlip = false, coord = vector3(-78.31,822.53,227.74), heading = 359.29, config = 'cv', hash = '-1119680854', group = '', drawText = true, lock = true, distance = 1, id = "D178"},


{showBlip = false, coord = vector3(-1796.86,4382.67,52.89), heading = 359.29, config = 'bloods', hash = '1185512375', group = '', drawText = true, lock = true, distance = 1, id = "D179"},
{showBlip = false, coord = vector3(-2038.37,4524.6,28.19), heading = 359.29, config = 'bloods', hash = '1185512375', group = '', drawText = true, lock = true, distance = 1, id = "D180"},
{showBlip = false, coord = vector3(-1811.27,4479.35,17.32), heading = 359.29, config = 'bloods', hash = '1185512375', group = '', drawText = true, lock = true, distance = 1, id = "D181"},
{showBlip = false, coord = vector3(1517.2,-2030.2,77.07), heading = 359.29, config = 'motoclub', hash = '1185512375', group = '', drawText = true, lock = true, distance = 1, id = "D182"},

{showBlip = false, coord = vector3(-842.41,-25.1,40.39), heading = 359.29, config = 'casavenda2', hash = '1073566574', group = '', drawText = true, lock = true, distance = 1, id = "D183"},
{showBlip = false, coord = vector3(-855.16,-26.82,40.56), heading = 359.29, config = 'casavenda2', hash = '-116678456', group = '', drawText = true, lock = true, distance = 1, id = "D184"},
{showBlip = false, coord = vector3(-855.46,-34.21,44.15), heading = 359.29, config = 'casavenda2', hash = '-1925605774', group = '', drawText = true, lock = true, distance = 1, id = "D185"},
{showBlip = false, coord = vector3(-855.46,-34.21,44.15), heading = 359.29, config = 'casavenda2', hash = '-1452880180', group = '', drawText = true, lock = true, distance = 1, id = "D186"},
{showBlip = false, coord = vector3(-844.27,-40.32,39.45), heading = 359.29, config = 'casavenda2', hash = '-1266685505', group = '', drawText = true, lock = true, distance = 1, id = "D187"},

{showBlip = false, coord = vector3(-825.12,-33.19,38.64), heading = 359.29, config = 'casavenda2', hash = '-1918480350', group = '', drawText = true, lock = true, distance = 1, id = "D188"},
{showBlip = false, coord = vector3(-826.97,-29.61,38.65), heading = 359.29, config = 'casavenda2', hash = '-349730013', group = '', drawText = true, lock = true, distance = 1, id = "D189"},
{showBlip = false, coord = vector3(-860.72,-31.83,40.56), heading = 359.29, config = 'casavenda2', hash = '-1925605774', group = '', drawText = true, lock = true, distance = 1, id = "D190"},
{showBlip = false, coord = vector3(-860.72,-31.83,40.56), heading = 359.29, config = 'casavenda2', hash = '-1452880180', group = '', drawText = true, lock = true, distance = 1, id = "D191"},
{showBlip = false, coord = vector3(-862.15,-33.34,40.56), heading = 359.29, config = 'casavenda2', hash = '-1925605774', group = '', drawText = true, lock = true, distance = 1, id = "D192"},
{showBlip = false, coord = vector3(-862.15,-33.34,40.56), heading = 359.29, config = 'casavenda2', hash = '-1452880180', group = '', drawText = true, lock = true, distance = 1, id = "D193"},

-- NAKAMOTO
{showBlip = false, coord = vector3(1395.67,1141.27,114.65), heading = 359.29, config = 'nm', hash = '262671971', group = 'nm1', drawText = true, lock = true, distance = 1, id = "D194"},
{showBlip = false, coord = vector3(1395.86,1142.34,114.65), heading = 359.29, config = 'nm', hash = '1504256620', group = 'nm1', drawText = true, lock = true, distance = 1, id = "D195"},
-- CV 
{showBlip = false, coord = vector3(-90.73,821.69,240.19), heading = 359.29, config = 'cv', hash = '-1186396713', group = '', drawText = true, lock = true, distance = 1, id = "D196"},
{showBlip = false, coord = vector3(-97.49,816.15,235.75), heading = 359.29, config = 'cv', hash = '-1119680854', group = '', drawText = true, lock = true, distance = 1, id = "D197"},
{showBlip = false, coord = vector3(-80.92,822.36,235.75), heading = 359.29, config = 'cv', hash = '-1119680854', group = '', drawText = true, lock = true, distance = 1, id = "D198"},
{showBlip = false, coord = vector3(-49.63,830.19,235.75), heading = 359.29, config = 'cv', hash = '-1119680854', group = '', drawText = true, lock = true, distance = 1, id = "D199"},
{showBlip = false, coord = vector3(-90.22,818.44,227.61), heading = 359.29, config = 'cv', hash = '631614199', group = '', drawText = true, lock = true, distance = 1, id = "D200"}, 

{showBlip = false, coord = vector3(-924.48,2680.87,40.93), heading = 359.29, config = 'tuga', hash = '741314661', group = '', drawText = true, lock = true, distance = 1, id = "D201"}, 
{showBlip = false, coord = vector3(-787.87,2668.24,53.62), heading = 359.29, config = 'tuga', hash = '741314661', group = '', drawText = true, lock = true, distance = 1, id = "D202"}, 

{showBlip = false, coord = vector3(2393.95,3800.87,38.32), heading = 359.29, config = 'turquia', hash = '741314661', group = '', drawText = true, lock = true, distance = 1, id = "D203"}, 

{showBlip = false, coord = vector3(2655.66,-792.01,34.83), heading = 359.29, config = 'franca', hash = '741314661', group = '', drawText = true, lock = true, distance = 1, id = "D204"}, 

{showBlip = false, coord = vector3(-2305.33,347.58,178.57), heading = 359.29, config = 'policia2', hash = '638449669', group = '', drawText = true, lock = true, distance = 1, id = "D205"},
{showBlip = false, coord = vector3(-2303.67,346.12,178.57), heading = 359.29, config = 'policia2', hash = '638449669', group = '', drawText = true, lock = true, distance = 1, id = "D206"},
{showBlip = false, coord = vector3(-2300.12,347.71,178.57), heading = 359.29, config = 'policia2', hash = '638449669', group = '', drawText = true, lock = true, distance = 1, id = "D207"},
{showBlip = false, coord = vector3(-2301.2,350.22,178.57), heading = 359.29, config = 'policia2', hash = '638449669', group = '', drawText = true, lock = true, distance = 1, id = "D208"},
{showBlip = false, coord = vector3(-2304.88,348.72,178.57), heading = 359.29, config = 'policia2', hash = '638449669', group = '', drawText = true, lock = true, distance = 1, id = "D209"},
{showBlip = false, coord = vector3(-2308.1,345.68,178.57), heading = 359.29, config = 'policia2', hash = '638449669', group = '', drawText = true, lock = true, distance = 1, id = "D210"},
{showBlip = false, coord = vector3(-2309.26,343.61,178.57), heading = 359.29, config = 'policia2', hash = '638449669', group = '', drawText = true, lock = true, distance = 1, id = "D211"},
{showBlip = false, coord = vector3(-2312.9,342.0,178.57), heading = 359.29, config = 'policia2', hash = '638449669', group = '', drawText = true, lock = true, distance = 1, id = "D212"},
{showBlip = false, coord = vector3(-2314.1,344.52,178.57), heading = 359.29, config = 'policia2', hash = '638449669', group = '', drawText = true, lock = true, distance = 1, id = "D213"},
{showBlip = false, coord = vector3(-2310.32,346.28,178.57), heading = 359.29, config = 'policia2', hash = '638449669', group = '', drawText = true, lock = true, distance = 1, id = "D214"},

{showBlip = false, coord = vector3(-70.56,823.79,231.33), heading = 359.29, config = 'cv', hash = '-1119680854', group = '', drawText = true, lock = true, distance = 1, id = "D215"},
{showBlip = false, coord = vector3(-51.27,828.0,231.33), heading = 359.29, config = 'cv', hash = '-1119680854', group = '', drawText = true, lock = true, distance = 1, id = "D216"}, 

{showBlip = false, coord = vector3(-1732.93,378.73,89.74), heading = 359.29, config = 'casavenda3', hash = '-826011544', group = '', drawText = true, lock = true, distance = 1, id = "D217"},
{showBlip = false, coord = vector3(-1737.32,372.27,89.73), heading = 359.29, config = 'casavenda3', hash = '1432392886', group = '', drawText = true, lock = true, distance = 1, id = "D218"}, 


{showBlip = false, coord = vector3(1144.25,-1573.17,35.38), heading = 359.29, config = 'hospitalbombeiro', hash = '1412301793', group = '', drawText = true, lock = true, distance = 1, id = "D219"},
{showBlip = false, coord = vector3(1144.25,-1573.17,35.38), heading = 359.29, config = 'hospitalbombeiro', hash = '1412301793', group = '', drawText = true, lock = true, distance = 1, id = "D220"}, 
{showBlip = false, coord = vector3(1149.25,-1572.79,35.3), heading = 359.29, config = 'hospitalbombeiro', hash = '1412301793', group = '', drawText = true, lock = true, distance = 1, id = "D221"},
{showBlip = false, coord = vector3(111.22,-1322.78,29.39), heading = 359.29, config = 'nm', hash = '741314661', group = '', drawText = true, lock = true, distance = 1, id = "D222"},
{showBlip = false, coord = vector3(714.12,4197.25,40.88), heading = 359.29, config = 'yakuza', hash = '741314661', group = '', drawText = true, lock = true, distance = 1, id = "D223"},
{showBlip = false, coord = vector3(714.12,4197.25,40.88), heading = 359.29, config = 'tdr', hash = '741314661', group = '', drawText = true, lock = true, distance = 1, id = "D224"},

{showBlip = false, coord = vector3(-134.01,-1543.04,34.29), heading = 359.29, config = 'ballas', hash = '741314661', group = '', drawText = true, lock = true, distance = 1, id = "D225"},
{showBlip = false, coord = vector3(-149.02,-1719.79,30.13), heading = 359.29, config = 'ballas', hash = '741314661', group = '', drawText = true, lock = true, distance = 1, id = "D226"},
{showBlip = false, coord = vector3(69.38,-1911.08,21.64), heading = 359.29, config = 'tuga', hash = '74134661', group = '', drawText = true, lock = true, distance = 1, id = "D227"},


{showBlip = false, coord = vector3(496.61,-1314.06,29.28), heading = 359.29, config = 'hells', hash = '-1927271438', group = '', drawText = true, lock = true, distance = 1, id = "D227"},
{showBlip = false, coord = vector3(484.57,-1315.63,29.2), heading = 359.29, config = 'hells', hash = '-190780785', group = '', drawText = true, lock = true, distance = 1, id = "D228"},


{showBlip = false, coord = vector3(-1030.53,306.31,71.66), heading = 359.29, config = 'nm', hash = '1901183774', group = '', drawText = true, lock = true, distance = 1, id = "D229"},
{showBlip = false, coord = vector3(-1033.5,310.9,71.66), heading = 359.29, config = 'nm', hash = '1901183774', group = '', drawText = true, lock = true, distance = 1, id = "D230"},
{showBlip = false, coord = vector3(-1030.1,304.96,71.66), heading = 359.29, config = 'nm', hash = '1901183774', group = '', drawText = true, lock = true, distance = 1, id = "D231"},
{showBlip = false, coord = vector3(-1828.06,418.07,121.28), heading = 359.29, config = 'faixapreta', hash = '-1438552720', group = '', drawText = true, lock = true, distance = 1, id = "D232"},

{showBlip = false, coord = vector3(68.04,-1912.7,21.58), heading = 359.29, config = 'tuga', hash = '741314661', group = '', drawText = true, lock = true, distance = 1, id = "D233"}, 

{showBlip = false, coord = vector3(1310.39,1188.6,106.95), heading = 359.29, config = 'cv', hash = '1286392437', group = '', drawText = true, lock = true, distance = 1, id = "D234"}, 
{showBlip = false, coord = vector3(1317.21,1106.34,105.88), heading = 359.29, config = 'cv', hash = '1286392437', group = '', drawText = true, lock = true, distance = 1, id = "D235"}, 

--{showBlip = false, coord = vector3(-954.06,301.19,70.74), heading = 359.29, config = 'nm', hash = '-349730013', group = '', drawText = true, lock = true, distance = 1, id = "D236"},
--{showBlip = false, coord = vector3(-953.39,300.1,70.74), heading = 359.29, config = 'nm', hash = '-1918480350', group = '', drawText = true, lock = true, distance = 1, id = "D237"},
--{showBlip = false, coord = vector3(-1064.62,315.46,65.87), heading = 359.29, config = 'nm', hash = '-1918480350', group = '', drawText = true, lock = true, distance = 1, id = "D238"},
--{showBlip = false, coord = vector3(-953.39,300.1,70.74), heading = 359.29, config = 'nm', hash = '-349730013', group = '', drawText = true, lock = true, distance = 1, id = "D239"},

{showBlip = false, coord = vector3(-844.1,158.23,66.79), heading = 359.29, config = 'tequila1', hash = '-2125423493', group = '', drawText = true, lock = true, distance = 1, id = "D240"},
{showBlip = false, coord = vector3(-848.96,178.62,69.83), heading = 359.29, config = 'tequila1', hash = '-1568354151', group = '', drawText = true, lock = true, distance = 1, id = "D241"},

{showBlip = false, coord = vector3(-952.32,298.5,70.72), heading = 359.29, config = 'nm', hash = '-1918480350', group = '', drawText = true, lock = true, distance = 1, id = "D242"},
{showBlip = false, coord = vector3(-954.83,302.37,70.74), heading = 359.29, config = 'nm', hash = '-349730013', group = '', drawText = true, lock = true, distance = 1, id = "D243"},
--{showBlip = false, coord = vector3(-1064.7,314.43,65.83), heading = 359.29, config = 'nm', hash = '-1918480350', group = '', drawText = true, lock = true, distance = 1, id = "D244"},
--{showBlip = false, coord = vector3(-1064.1,318.14,65.98), heading = 359.29, config = 'nm', hash = '-349730013', group = '', drawText = true, lock = true, distance = 1, id = "D245"},
{showBlip = false, coord = vector3(-1038.67,328.66,68.01), heading = 359.29, config = 'nm', hash = '-1918480350', group = '', drawText = true, lock = true, distance = 1, id = "D246"},
{showBlip = false, coord = vector3(-1034.29,328.61,68.09), heading = 359.29, config = 'nm', hash = '-349730013', group = '', drawText = true, lock = true, distance = 1, id = "D247"},

{showBlip = false, coord = vector3(-1522.58,143.02,55.65), heading = 359.29, config = 'playboy', hash = '653721055', group = '', drawText = true, lock = true, distance = 1, id = "D248"},
{showBlip = false, coord = vector3(-1536.44,131.08,57.36), heading = 359.29, config = 'playboy', hash = '346577218', group = '', drawText = true, lock = true, distance = 1, id = "D249"},
{showBlip = false, coord = vector3(-1537.27,125.89,56.78), heading = 359.29, config = 'playboy', hash = '39269536', group = '', drawText = true, lock = true, distance = 1, id = "D250"},
{showBlip = false, coord = vector3(-1537.02,119.98,56.78), heading = 359.29, config = 'playboy', hash = '39269536', group = '', drawText = true, lock = true, distance = 1, id = "D251"},
{showBlip = false, coord = vector3(-1500.88,103.61,55.67), heading = 359.29, config = 'playboy', hash = '346577218', group = '', drawText = true, lock = true, distance = 1, id = "D252"},
{showBlip = false, coord = vector3(-1536.59,98.52,56.78), heading = 359.29, config = 'playboy', hash = '653721055', group = '', drawText = true, lock = true, distance = 1, id = "D253"},
{showBlip = false, coord = vector3(-1535.74,108.76,56.78), heading = 359.29, config = 'playboy', hash = '39269536', group = '', drawText = true, lock = true, distance = 1, id = "D254"},
{showBlip = false, coord = vector3(-1541.67,91.55,57.95), heading = 359.29, config = 'playboy', hash = '353721055', group = '', drawText = true, lock = true, distance = 1, id = "D255"},

{showBlip = false, coord = vector3(-308.66,-716.17,28.02), heading = 359.29, config = 'casavenda6', hash = '1879668795', group = '', drawText = true, lock = true, distance = 1, id = "D256"},





}
})