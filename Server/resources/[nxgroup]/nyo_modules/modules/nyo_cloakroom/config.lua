NyoModules.registerConfig({
    config = {
        ['configCloakRoomDP'] = {
            type = 'cloakRoom', -- não alterar
            input = 'cloakRoom', -- não alterar
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
                name = 'CloakRoom', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissão para acessar o elevador (vazio = todo mundo)
            
            cloakConfig = {
                permRetirar = true,
                pressets = {
                    ['M'] = {
                        {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 1 (ALUNO)", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {1,4,0}, -- mascara
                                [3] = {19,0,0}, -- maos
                                [4] = {87,11,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {24,0,0}, -- sapatos
                                [7] = {14,0,0}, -- acessorios
                                [8] = {17,1,0}, -- camisa
                                [9] = {19,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {318,0,0}, -- jaqueta
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 2 (SOLDADO)", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {121,0,0}, -- mascara
                                [3] = {19,0,0}, -- maos
                                [4] = {87,11,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {24,0,0}, -- sapatos
                                [7] = {14,0,0}, -- acessorios
                                [8] = {17,1,0}, -- camisa
                                [9] = {19,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {73,1,0}, -- jaqueta 
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 3 (CABO)", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {121,0,0}, -- mascara
                                [3] = {19,0,0}, -- maos
                                [4] = {87,11,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {14,0,0}, -- acessorios
                                [8] = {17,1,0}, -- camisa
                                [9] = {19,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {73,2,0}, -- jaqueta   
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 4  (GRADUADO)", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {121,0,0}, -- mascara
                                [3] = {19,0,0}, -- maos
                                [4] = {87,11,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {14,0,0}, -- acessorios
                                [8] = {17,1,0}, -- camisa
                                [9] = {19,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {155,2,0}, -- jaqueta
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 5  (OFICIAL)", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {0,0,0}, -- mascara
                                [3] = {19,0,0}, -- maos
                                [4] = {87,11,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {14,0,0}, -- acessorios
                                [8] = {17,1,0}, -- camisa
                                [9] = {19,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {309,2,0}, -- jaqueta
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 6  (FTO AUX)", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {0,0,0}, -- mascara
                                [3] = {19,0,0}, -- maos
                                [4] = {87,11,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {38,0,0}, -- acessorios
                                [8] = {17,1,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {205,0,0}, -- jaqueta
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 7  (FTO RECRUITER )", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {0,0,0}, -- mascara
                                [3] = {27,0,0}, -- maos
                                [4] = {87,11,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {14,0,0}, -- acessorios
                                -- [9] = {0,25,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {249,0,0}, -- jaqueta
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 8  (FTO CHIEF)", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {121,0,0}, -- mascara
                                [3] = {27,0,0}, -- maos
                                [4] = {87,11,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {14,0,0}, -- acessorios
                                -- [9] = {0,25,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {249,1,0}, -- jaqueta 
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 9  (MD)", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {121,0,0}, -- mascara
                                [3] = {151,0,0}, -- maos
                                [4] = {87,13,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {14,0,0}, -- acessorios
                                [8] = {17,1,0}, -- camisa
                                [9] = {19,0,0}, -- colete
                                [10] = {0,0,0}, -- adesivo
                                [11] = {220,8,0}, -- jaqueta
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 10  (M.T.G)", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {121,0,0}, -- mascara
                                [3] = {33,0,0}, -- maos
                                [4] = {87,12,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {14,0,0}, -- acessorios
                                -- [9] = {0,25,0}, -- camisa
                                [9] = {19,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {220,2,0}, -- jaqueta 
                    
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 11  ( S.O.G )", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {35,0,0}, -- mascara
                                [3] = {25,0,0}, -- maos
                                [4] = {87,9,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {38,0,0}, -- acessorios
                                [8] = {43,0,0}, -- camisa
                                [9] = {26,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {228,1,0}, -- jaqueta
                    
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 12  ( S.W.A.T )", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {169,13,0}, -- mascara
                                [3] = {141,0,0}, -- maos
                                [4] = {92,6,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {38,0,0}, -- acessorioc.s
                                [8] = {43,0,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {212,2,0}, -- jaqueta 
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 13  ( C.O.D )", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {169,13,0}, -- mascara
                                [3] = {151,0,0}, -- maos
                                [4] = {87,4,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {38,0,0}, -- acessorios
                                [8] = {43,2,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {227,0,0}, -- jaqueta 
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 14  ( S.A.S )", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {121,0,0}, -- mascara
                                [3] = {25,0,0}, -- maos
                                [4] = {87,10,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {14,0,0}, -- acessorios
                                [8] = {58,0,0}, -- camisa
                                [9] = {19,2,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {228,2,0}, -- jaqueta
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 15  ( SPEED )", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {121,0,0}, -- mascara
                                [3] = {25,0,0}, -- maos
                                [4] = {87,11,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {0,0,0}, -- acessorios
                                [8] = {176,0,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {151,0,0}, -- jaqueta
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 16 ( FEDERAL )", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {109,0,0}, -- mascara
                                [3] = {77,0,0}, -- maos
                                [4] = {92,8,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {14,0,0}, -- acessorios
                                [8] = {43,0,0}, -- camisa
                                [9] = {11,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {51,0,0}, -- jaqueta 
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 17 ( COMANDO )", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {121,0,0}, -- mascara
                                [3] = {0,0,0}, -- maos
                                [4] = {87,11,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {14,0,0}, -- acessorios
                                [8] = {176,0,0}, -- camisa
                                [9] = {19,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {151,1,0}, -- jaqueta
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 18 ( COMANDO 2 )", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {121,0,0}, -- mascara
                                [3] = {141,0,0}, -- maos
                                [4] = {87,11,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {14,0,0}, -- acessorios
                                -- [9] = {0,,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {309,0,0}, -- jaqueta
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 19 ( COMANDO 3)", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {121,0,0}, -- mascara
                                [3] = {0,0,0}, -- maos
                                [4] = {87,11,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {14,0,0}, -- acessorios
                                [8] = {176,0,0}, -- camisa
                                [9] = {19,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {155,1,0}, -- jaquetamaos 
                            }
                        },
                    },
                    ['F'] = {
                        {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 1 (ALUNA)", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {0,0,0}, -- mascara
                                [3] = {31,0,0}, -- maos
                                [4] = {90,3,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {7,0,0}, -- acessorios
                                -- [9] = {0,25,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {330,0,0}, -- jaqueta
                            }
                        },
                            {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 2 (PRAÇAS)", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {0,0,0}, -- mascara
                                [3] = {31,0,0}, -- maos
                                [4] = {90,3,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {7,0,0}, -- acessorios
                                -- [9] = {0,25,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {89,0,0}, -- jaqueta
                            }
                        },
                            {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 3 (GRADUADO)", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {0,0,0}, -- mascara
                                [3] = {31,0,0}, -- maos
                                [4] = {90,3,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {7,0,0}, -- acessorios
                                -- [9] = {0,25,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {85,2,0}, -- jaqueta
                            }
                        },
                            {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 4 (OFICIAL)", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {0,0,0}, -- mascara
                                [3] = {31,0,0}, -- maos
                                [4] = {90,3,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {7,0,0}, -- acessorios
                                -- [9] = {0,25,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {319,2,0}, -- jaqueta
                            }
                        },
                            {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 5 (FTO AUX)", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {0,0,0}, -- mascara
                                [3] = {24,0,0}, -- maos
                                [4] = {90,3,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {7,0,0}, -- acessorios
                                -- [9] = {0,25,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {207,0,0}, -- jaqueta
                            }
                        },
                            {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 6 (FTO)", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {169,13,0}, -- mascara
                                [3] = {31,0,0}, -- maos
                                [4] = {90,3,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {7,0,0}, -- acessorios
                                -- [9] = {0,25,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {257,0,0}, -- jaqueta
                            }
                        },
                            {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 7 (HIGH COMMAND)", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {0,0,0}, -- mascara
                                [3] = {31,0,0}, -- maos
                                [4] = {90,10,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {7,0,0}, -- acessorios
                                -- [9] = {0,25,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {85,0,0}, -- jaqueta
                            }
                        },
                            {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 8 (HIGH COMMAND 2)", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {0,0,0}, -- mascara
                                [3] = {31,0,0}, -- maos
                                [4] = {90,10,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {7,0,0}, -- acessorios
                                -- [9] = {0,25,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {85,1,0}, -- jaqueta
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 9 (COD)", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {169,13,0}, -- mascara
                                [3] = {14,0,0}, -- maos
                                [4] = {90,11,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {26,0,0}, -- acessorios
                                -- [9] = {0,25,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {221,1,0}, -- jaqueta
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 10 (SOG)", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {169,13,0}, -- mascara
                                [3] = {19,0,0}, -- maos
                                [4] = {90,3,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {7,0,0}, -- acessorios
                                -- [9] = {0,25,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {103,1,0}, -- jaqueta
                            }
                        }, 
                        {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 11 (SWAT)", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {169,13,0}, -- mascara
                                [3] = {174,0,0}, -- maos
                                [4] = {95,0,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {26,0,0}, -- acessorios
                                [8] = {103,0,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {289,1,0}, -- jaqueta
                            }
                        }, 
                        {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 12 (SAS)", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {169,13,0}, -- mascara
                                [3] = {19,0,0}, -- maos
                                [4] = {90,4,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {7,0,0}, -- acessorios
                                [8] = {189,0,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {103,2,0}, -- jaqueta
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 12 (MTG)", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {169,13,0}, -- mascara
                                [3] = {19,0,0}, -- maos
                                [4] = {90,16,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {7,0,0}, -- acessorios
                                [8] = {9,0,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {230,2,0}, -- jaqueta
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 13 (md)", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {187,4,0}, -- mascara
                                [3] = {88,0,0}, -- maos
                                [4] = {90,14,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {7,0,0}, -- acessorios
                                [8] = {189,0,0}, -- camisa
                                [9] = {21,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {230,8,0}, -- jaqueta
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 14 (nfp)", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {169,15,0}, -- mascara
                                [3] = {49,0,0}, -- maos
                                [4] = {94,7,0}, -- calca
                                [5] = {13,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {3,0,0}, -- acessorios
                                [8] = {67,3,0}, -- camisa
                                [9] = {10,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {44,0,0}, -- jaqueta
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "policia.permissao", -- permissão para usar este presset
                            name = "PRESET 15 (speed)", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {90,6,0}, -- mascara
                                [3] = {3,0,0}, -- maos
                                [4] = {90,3,0}, -- calca
                                [5] = {13,0,0}, -- mochila
                                [6] = {25,0,0}, -- sapatos
                                [7] = {3,0,0}, -- acessorios
                                [8] = {67,3,0}, -- camisa
                                [9] = {10,0,0}, -- colete
                                -- [10] = {10,0,0}, -- adesivo
                                [11] = {148,2,0}, -- jaqueta
                            }
                        },
                    }
                }    
            }           
        },


        ['configCloakRoomMecanico'] = {
            type = 'cloakRoom', -- não alterar
            input = 'cloakRoom', -- não alterar
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
                name = 'CloakRoom', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "mecanico.permissao", -- permissão para acessar o elevador (vazio = todo mundo)
            
            cloakConfig = {
                permRetirar = true,
                pressets = {
                    ['M'] = {
                        {
                            active = true, -- exibe o presset na lista
                            perm = "mecanico.permissao", -- permissão para usar este presset
                            name = "Jovem Aprendiz", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {0,0,0}, -- mascara
                                [3] = {1,0,0}, -- maos
                                [4] = {91,0,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {62,0,0}, -- sapatos
                                [7] = {0,0,0}, -- acessorios
                                [8] = {78,0,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                [10] = {0,0,0}, -- adesivo
                                [11] = {239,0,0}, -- jaqueta
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "mecanico.permissao", -- permissão para usar este presset
                            name = "Mecanico", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {0,0,0}, -- mascara
                                [3] = {1,0,0}, -- maos
                                [4] = {91,3,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {62,0,0}, -- sapatos
                                [7] = {0,0,0}, -- acessorios
                                [8] = {78,0,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                [10] = {0,0,0}, -- adesivo
                                [11] = {239,3,0}, -- jaqueta
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "mecanico.permissao", -- permissão para usar este presset
                            name = "Especialista", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {0,0,0}, -- mascara
                                [3] = {1,0,0}, -- maos
                                [4] = {91,2,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {62,0,0}, -- sapatos
                                [7] = {0,0,0}, -- acessorios
                                [8] = {78,0,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                [10] = {0,0,0}, -- adesivo
                                [11] = {239,2,0}, -- jaqueta
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "mecanico.permissao", -- permissão para usar este presset
                            name = "Engenheiro", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {0,0,0}, -- mascara
                                [3] = {1,0,0}, -- maos
                                [4] = {91,4,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {62,0,0}, -- sapatos
                                [7] = {0,0,0}, -- acessorios
                                [8] = {78,0,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                [10] = {0,0,0}, -- adesivo
                                [11] = {239,4,0}, -- jaqueta
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "mecanico.permissao", -- permissão para usar este presset
                            name = "Conselheiro", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {0,0,0}, -- mascara
                                [3] = {1,0,0}, -- maos
                                [4] = {91,8,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {62,0,0}, -- sapatos
                                [7] = {0,0,0}, -- acessorios
                                [8] = {78,0,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                [10] = {0,0,0}, -- adesivo
                                [11] = {239,8,0}, -- jaqueta
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "mecanico.permissao", -- permissão para usar este presset
                            name = "Sub Gerente", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {0,0,0}, -- mascara
                                [3] = {1,0,0}, -- maos
                                [4] = {91,1,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {62,0,0}, -- sapatos
                                [7] = {0,0,0}, -- acessorios
                                [8] = {78,0,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                [10] = {0,0,0}, -- adesivo
                                [11] = {239,1,0}, -- jaqueta
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "mecanico.permissao", -- permissão para usar este presset
                            name = "Gerente", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {0,0,0}, -- mascara
                                [3] = {1,0,0}, -- maos
                                [4] = {91,6,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {62,0,0}, -- sapatos
                                [7] = {0,0,0}, -- acessorios
                                [8] = {78,0,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                [10] = {0,0,0}, -- adesivo
                                [11] = {239,6,0}, -- jaqueta
                            }
                        },
                    },
                    ['F'] = {
                        {
                            active = true, -- exibe o presset na lista
                            perm = "mecanico.permissao", -- permissão para usar este presset
                            name = "Jovem Aprendiz", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {0,0,0}, -- mascara
                                [3] = {15,0,0}, -- maos
                                [4] = {98,0,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {65,0,0}, -- sapatos
                                [7] = {0,0,0}, -- acessorios
                                [8] = {81,0,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                [10] = {0,0,0}, -- adesivo
                                [11] = {121,0,0}, -- jaqueta
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "mecanico.permissao", -- permissão para usar este presset
                            name = "Mecanico", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {0,0,0}, -- mascara
                                [3] = {15,0,0}, -- maos
                                [4] = {98,3,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {65,0,0}, -- sapatos
                                [7] = {0,0,0}, -- acessorios
                                [8] = {81,0,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                [10] = {0,0,0}, -- adesivo
                                [11] = {121,3,0}, -- jaqueta
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "mecanico.permissao", -- permissão para usar este presset
                            name = "Especialista", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {0,0,0}, -- mascara
                                [3] = {15,0,0}, -- maos
                                [4] = {98,2,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {65,0,0}, -- sapatos
                                [7] = {0,0,0}, -- acessorios
                                [8] = {81,0,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                [10] = {0,0,0}, -- adesivo
                                [11] = {121,2,0}, -- jaqueta
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "mecanico.permissao", -- permissão para usar este presset
                            name = "Engenheiro", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {0,0,0}, -- mascara
                                [3] = {15,0,0}, -- maos
                                [4] = {98,4,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {65,0,0}, -- sapatos
                                [7] = {0,0,0}, -- acessorios
                                [8] = {81,0,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                [10] = {0,0,0}, -- adesivo
                                [11] = {121,4,0}, -- jaqueta
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "mecanico.permissao", -- permissão para usar este presset
                            name = "Conselheiro", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {0,0,0}, -- mascara
                                [3] = {15,0,0}, -- maos
                                [4] = {98,8,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {65,0,0}, -- sapatos
                                [7] = {0,0,0}, -- acessorios
                                [8] = {81,0,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                [10] = {0,0,0}, -- adesivo
                                [11] = {121,8,0}, -- jaqueta
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "mecanico.permissao", -- permissão para usar este presset
                            name = "Sub Gerente", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {0,0,0}, -- mascara
                                [3] = {15,0,0}, -- maos
                                [4] = {98,1,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {65,0,0}, -- sapatos
                                [7] = {0,0,0}, -- acessorios
                                [8] = {81,0,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                [10] = {0,0,0}, -- adesivo
                                [11] = {121,1,0}, -- jaqueta
                            }
                        },
                        {
                            active = true, -- exibe o presset na lista
                            perm = "mecanico.permissao", -- permissão para usar este presset
                            name = "Gerente", -- nome do presset
                            img = "default", -- imagem do presset
                            clothe = {
                                [1] = {0,0,0}, -- mascara
                                [3] = {15,0,0}, -- maos
                                [4] = {98,6,0}, -- calca
                                [5] = {0,0,0}, -- mochila
                                [6] = {65,0,0}, -- sapatos
                                [7] = {0,0,0}, -- acessorios
                                [8] = {81,0,0}, -- camisa
                                [9] = {0,0,0}, -- colete
                                [10] = {0,0,0}, -- adesivo
                                [11] = {121,6,0}, -- jaqueta
                            }
                        },

                    }
                }    
            }

        },
    },

    locs = {
        {showBlip = false, coord = vector3(-2307.94,354.97,174.6), heading = 359.29, config = 'configCloakRoomDP'},
        {showBlip = false, coord = vector3(2746.2,3501.36,61.31), heading = 359.29, config = 'configCloakRoomMecanico'},
        -- {showBlip = false, coord = vector3(421.72283935547,-1024.8740234375,29.034915924072), heading = 359.29, config = 'configCloakRoom2'},        
    }
})