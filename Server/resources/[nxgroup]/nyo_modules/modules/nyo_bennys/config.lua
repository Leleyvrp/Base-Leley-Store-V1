NyoModules.registerConfig({
    config = { 
        ['configBennys'] = {
            type = 'bennys', -- não alterar
            input = 'bennys', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {0,255,0,75}, -- marker color (R,G,B,A)
                scale = vec3(4.0, 4.0, 1.0),
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
                name = 'Bennys', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "bennys.permissao", -- permissao para acessar o blip      
            paymentType = 2,         
            disableTuningWorkVehicles = false,
            hidePlayers = false,
            hideVehicles = false,
            previewOnItemHover = true,
            playAudioOnModChange = false,
            bennysConfig = {

                [0] = {
                    price = 4350,
                    increaseBy = 900,       
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 2
                    }
                },
        
                [1] = {
                    price = 4350,
                    increaseBy = 1150,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [2] = {
                    price = 4350,
                    increaseBy = 1100,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [3] = {
                    price = 3250,
                    increaseBy = 1100,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [4] = {
                    price = 3500,
                    increaseBy = 1100,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [5] = {
                    price = 3250,
                    increaseBy = 1100,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [6] = {
                    price = 3350,
                    increaseBy = 1100,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [7] = {
                    price = 3950,
                    increaseBy = 1100,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [8] = {
                    price = 1500,
                    increaseBy = 400,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [9] = {
                    price = 3750,
                    increaseBy = 1356,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [10] = {
                    price = 4250,
                    increaseBy = 900,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [11] = {
                    price = 13500,
                    increaseBy = 9305,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [12] = {
                    price = 13820,
                    increaseBy = 6675,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [13] = {
                    price = 18000,
                    increaseBy = 9925,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [14] = {
                    price = 1100,
                    increaseBy = 200,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [15] = {
                    price = 6000,
                    increaseBy = 6000,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                -- [16] = {
                --     price = 999999999,
                --     increaseBy = 500,
                --     requireItem = false,
                --     item = {
                --         index = '',
                --         qtd = 1
                --     }
                -- },
        
                [17] = {
                    price = 1500,
                    increaseBy = 500,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [18] = {
                    price = 35000,
                    increaseBy = 0,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [19] = {
                    price = 1500,
                    increaseBy = 500,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [20] = {
                    price = 1500,
                    increaseBy = 500,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [21] = {
                    price = 1500,
                    increaseBy = 500,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [22] = {
                    price = 6000,
                    increaseBy = 0,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [23] = {
                    price = 10000,
                    increaseBy = 0,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [24] = {
                    price = 10000,
                    increaseBy = 0,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [25] = {
                    price = 9000,
                    increaseBy = 4750,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [26] = {
                    price = 9000,
                    increaseBy = 4750,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [27] = {
                    price = 9000,
                    increaseBy = 4750,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [28] = {
                    price = 9000,
                    increaseBy = 5750,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [29] = {
                    price = 9000,
                    increaseBy = 5750,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [30] = {
                    price = 9000,
                    increaseBy = 5750,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [31] = {
                    price = 9000,
                    increaseBy = 3520,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [32] = {
                    price = 9000,
                    increaseBy = 4950,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [33] = {
                    price = 9000,
                    increaseBy = 4950,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [34] = {
                    price = 9236,
                    increaseBy = 4250,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [35] = {
                    price = 9236,
                    increaseBy = 5128,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [36] = {
                    price = 5000,
                    increaseBy = 1250,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [37] = {
                    price = 9236,
                    increaseBy = 5128,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [38] = {
                    price = 19000,
                    increaseBy = 6100,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [39] = {
                    price = 19000,
                    increaseBy = 6100,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [40] = {
                    price = 9236,
                    increaseBy = 5128,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [41] = {
                    price = 9236,
                    increaseBy = 5128,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [42] = {
                    price = 9236,
                    increaseBy = 5128,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [43] = {
                    price = 9236,
                    increaseBy = 5128,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [44] = {
                    price = 9236,
                    increaseBy = 5128,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [45] = {
                    price = 9236,
                    increaseBy = 5128,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [46] = {
                    price = 9800,
                    increaseBy = 3850,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [47] = {
                    price = 1500,
                    increaseBy = 500,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [48] = {
                    price = 5000,
                    increaseBy = 800,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
        
                [49] = {
                    price = 1500,
                    increaseBy = 500,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },

                primaryPaintType = {
                    price = 1300,
                    increaseBy = 0,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },

                secondaryPaintType = {
                    price = 1300,
                    increaseBy = 0,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },

                windowTint = {
                    price = 8200,
                    increaseBy = 0,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },
                
                xenonColour = {
                    price = 6000,
                    increaseBy = 0,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },

                wheelType = {
                    price = 1500,
                    increaseBy = 0,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },

                pearlescentColour = {
                    price = 1500,
                    increaseBy = 0,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },

                wheelColour = {
                    price = 1356,
                    increaseBy = 0,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },

                primaryColour = {
                    price = 1500,
                    increaseBy = 0,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },

                secondaryColour = {
                    price = 1500,
                    increaseBy = 0,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 1
                    }
                },

                tyreSmokeColour = {
                    price = 350,
                    increaseBy = 100,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 5
                    }
                },

                neon = {

                    toggle = {
                        price = 3000,
                        increaseBy = 0,
                        requireItem = false,
                        item = {
                            index = '',
                            qtd = 1
                        }
                    },

                    color = {
                        price = 3000,
                        increaseBy = 0,
                        requireItem = false,
                        item = {
                            index = '',
                            qtd = 1
                        }
                    }

                },

                plate = {
                    price = 950,
                    increaseBy = 950,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 5
                    }
                },

                customTires = {
                    price = 1500,
                    increaseBy = 0,
                    requireItem = false,
                    item = {
                        index = '',
                        qtd = 5
                    }
                },

                -- bulletProofTyres = {
                --     price = 1500,
                --     increaseBy = 500,
                --     requireItem = false,
                --     item = {
                --         index = '',
                --         qtd = 5
                --     }
                -- },
            }
        },
    },

    locs = {
        {showBlip = false, markerDistance = 50.0, distance = 3.0, coord = vector3(2716.51,3450.17,55.72), heading = 359.29, config = 'configBennys'},
        {showBlip = false, markerDistance = 50.0, distance = 3.0, coord = vector3(2721.21,3460.44,55.72), heading = 359.29, config = 'configBennys'},
        {showBlip = false, markerDistance = 50.0, distance = 3.0, coord = vector3(2725.67,3470.35,55.71), heading = 359.29, config = 'configBennys'},
        {showBlip = false, markerDistance = 50.0, distance = 3.0, coord = vector3(2730.15,3480.44,55.71), heading = 359.29, config = 'configBennys'},
        {showBlip = false, markerDistance = 50.0, distance = 3.0, coord = vector3(2739.28,3461.21,55.72), heading = 359.29, config = 'configBennys'},
        {showBlip = false, markerDistance = 50.0, distance = 3.0, coord = vector3(2733.54,3447.8,55.72), heading = 359.29, config = 'configBennys'},
        {showBlip = false, markerDistance = 50.0, distance = 3.0, coord = vector3(2694.82,3470.47,63.43), heading = 359.29, config = 'configBennys'},
        {showBlip = false, markerDistance = 50.0, distance = 3.0, coord = vector3(2770.72,3490.83,55.31), heading = 359.29, config = 'configBennys'},
        {showBlip = false, markerDistance = 50.0, distance = 3.0, coord = vector3(2736.73,3414.68,56.68), heading = 359.29, config = 'configBennys'},

    },

    commands = {
       -- {showBlip = true, coord = vector3(-75.770088195801,-818.69323730469,326.17532348633), distance = 100000000, command = "openBennys", config = 'configBennys'},
    }
})

