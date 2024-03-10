local module = 'nyo_jobintermed'
local traceback = _G["eTqNnRuptTBY"]()
local valid_traceback = _G["dDcQJEZxsVUL"]('@nyo_modules/modules/%s/server.lua', module)

if traceback:find(valid_traceback) then
    _G["jocFUbwHswUG"](module, "1.0.2", function()

        local activedUsers = {}

        local function lbHaliErgCGs(user_id, emp)
            if activedUsers[user_id] == nil then 
                activedUsers[user_id] = true
                cfgJob = NyoModulesConfigs.jobIntermedGeneralConfig[emp..'Config']
    
                if cfgJob.paymentType.money then 
                    local jobMoney = math.random(cfgJob.minMoney, cfgJob.maxMoney)
                    -- aqui efetua o pagamento com dinheiro
                    _G["EEdrKGjmWadC"](user_id, jobMoney)
                end
        
                if cfgJob.paymentType.itens then 
                    local jobItemType = cfgJob.paymentItensType
                    if jobItemType == 1 then 
                        for k,v in pairs(cfgJob.paymentItens) do 
                            local jobItem = v.item
                            local jobItemRand = math.random(v.min, v.max)
                            -- da o item
                            if _G["bSaGraBxGFIt"](user_id, jobItem, jobItemRand) then
                                _G["zwwoyTMDtKKz"](user_id, jobItem, jobItemRand)
                            else 
                                _G["BlTdLpuxZreB"](source, 'Erro', 'Você não possui espaço na mochila!', "#FF0000", 5000)
                            end
                        end
                    elseif jobItemType == 2 then 
                        local jobItemSort = math.random(#cfgJob.paymentItens)
                        local jobSendItem = cfgJob.paymentItens[jobItemSort].item 
                        local jobSendQtd = math.random(cfgJob.paymentItens[jobItemSort].min, cfgJob.paymentItens[jobItemSort].max)
                        -- da o item
                        if _G["bSaGraBxGFIt"](user_id, jobSendItem, jobSendQtd) then
                            _G["zwwoyTMDtKKz"](user_id, jobSendItem, jobSendQtd)
                        else 
                            _G["BlTdLpuxZreB"](source, 'Erro', 'Você não possui espaço na mochila!', "#FF0000", 5000)
                        end
                    end
                end 

                activedUsers[user_id] = nil
            end
        end

        if NyoModulesConfigs.jobIntermedGeneralConfig.garbageman then
            local cfgGarbageV2 = NyoModulesConfigs.jobIntermedGeneralConfig.garbagemanConfig

            local garbageV2Players = {}
            local coordsGarbageV2 = {}

            _G["RlAdkFhWyBMh"]('garbagev2/addPlayerToEmp', function(source)
                local user_id = _G["vJghXzhWwgis"](source)
                garbageV2Players[source] = {
                    user_id = user_id,
                    startTime = os.date('%c')
                }
                local res = {}
                for k,v in pairs(coordsGarbageV2) do
                    res[#res+1] = v[1]
                end
                return res
            end)

            _G["aMsDmQWPAyqD"]('nyo_modules:garbagev2/remPlayerFromEmp', function()
                local source = source
                if garbageV2Players[source] then
                    garbageV2Players[source] = nil
                end
            end)

            _G["pbjlHZaIYckt"]('playerDropped',function()
                local source = source
                if garbageV2Players[source] then
                    garbageV2Players[source] = nil
                end
            end)

            _G["LYMIixTMVCDl"]('garbagev2/UpCheckCoords',function(source, cds)
                table.insert(coordsGarbageV2,{cds,cfgGarbageV2['resetTime']})
                lbHaliErgCGs(_G["vJghXzhWwgis"](source), 'garbageman')
                updatePlayersGarbage(cds, true)
            end)

            _G["xHAXdcjTentA"](function()
                while true do
                    for k,v in pairs(coordsGarbageV2) do
                        if v[2] then
                            v[2] = v[2] - 1
                            if v[2] == 0 then
                                coordsGarbageV2[k] = nil
                                updatePlayersGarbage(v[1], false)
                            end
                        end
                    end
                    _G["xCnKGFHhzrfn"](60000)
                end
            end)

            function updatePlayersGarbage(cds, status)
                for k,v in pairs(garbageV2Players) do
                    _G["IMyyRdNtiIsh"]('nyo_modules:garbagev2/updateCoords',k,cds, status)
                end
            end
        end
    
        if NyoModulesConfigs.jobIntermedGeneralConfig.farmer then

            local cfgFarmer = NyoModulesConfigs.jobIntermedGeneralConfig.farmerConfig

            _G["RlAdkFhWyBMh"]('farmer:checkItem', function(source, data)
                local user_id = _G["vJghXzhWwgis"](source)
                for k2,v2 in pairs(data) do 
                    if _G["gDtDlxkeHAAb"](user_id, v2.item) < v2.qtd then 
                        return false
                    end
                end
                for k2,v2 in pairs(data) do 
                    _G["AGCTXzaQqaSI"](user_id, v2.item, v2.qtd)
                end
                return true
            end)

            local farmerPlayer = {}
            local function RUqrrfcurkrh(l,status)
                for k,v in pairs(farmerPlayer) do
                    _G["IMyyRdNtiIsh"]('nyo_modules:farmer/updateConfig',k,l,status)
                end
            end

            _G["RlAdkFhWyBMh"]('farmer/addPlayerTofarmerEmp', function(source)
                local user_id = _G["vJghXzhWwgis"](source)
                farmerPlayer[source] = {
                    user_id = user_id,
                    startTime = os.date('%c')
                }
                return cfgFarmer
            end)

            _G["aMsDmQWPAyqD"]('nyo_modules:farmer/remPlayerFromfarmerEmp', function()
                local source = source
                farmerPlayer[source] = nil
            end)

            _G["pbjlHZaIYckt"]('playerDropped',function()
                local source = source
                farmerPlayer[source] = nil
            end)

            _G["LYMIixTMVCDl"]('checkFarmerCoords', function(source, k, type)
                cfgFarmer['collectFarmerLocations'][k]['status'] = true
                cfgFarmer['collectFarmerLocations'][k]['time'] = cfgFarmer['resetLocationTime']
                local user_id = _G["vJghXzhWwgis"](source)
                if activedUsers[user_id] == nil then 
                    activedUsers[user_id] = true
                    local cfgFarmerPayment = cfgFarmer['requirePayment'][type]

                    if cfgFarmerPayment.paymentType.money then 
                        local jobMoney = math.random(cfgFarmerPayment.paymentMoney.min, cfgFarmerPayment.paymentMoney.max)
                        -- aqui efetua o pagamento com dinheiro
                        _G["EEdrKGjmWadC"](user_id, jobMoney)
                    end
                    
                    if cfgFarmerPayment.paymentType.itens then 
                        local jobItemType = cfgFarmerPayment.paymentItemType
                        if jobItemType == 1 then 
                            for k,v in pairs(cfgFarmerPayment.paymentItem) do 
                                local jobItem = v.item
                                local jobItemRand = math.random(v.min, v.max)
                                -- da o item
                                if _G["bSaGraBxGFIt"](user_id, jobItem, jobItemRand) then
                                    _G["zwwoyTMDtKKz"](user_id, jobItem, jobItemRand)
                                else 
                                    _G["BlTdLpuxZreB"](source, 'Erro', 'Você não possui espaço na mochila!', "#FF0000", 5000)
                                end
                            end
                        elseif jobItemType == 2 then 
                            local jobItemSort = math.random(#cfgFarmerPayment.paymentItem)
                            local jobSendItem = cfgFarmerPayment.paymentItem[jobItemSort].item 
                            local jobSendQtd = math.random(cfgFarmerPayment.paymentItem[jobItemSort].min, cfgFarmerPayment.paymentItem[jobItemSort].max)
                            -- da o item
                            if _G["bSaGraBxGFIt"](user_id, jobSendItem, jobSendQtd) then
                                _G["zwwoyTMDtKKz"](user_id, jobSendItem, jobSendQtd)
                            else 
                                _G["BlTdLpuxZreB"](source, 'Erro', 'Você não possui espaço na mochila!', "#FF0000", 5000)
                            end
                        end
                    end
                    activedUsers[user_id] = nil
                end
                RUqrrfcurkrh(k,true)
            end)

            _G["xHAXdcjTentA"](function()
                while true do
                    for k,v in pairs(cfgFarmer['collectFarmerLocations']) do
                        if v.status then
                            v.time = v.time - 1
                            if v.time <= 0 then
                                v.time = nil
                                v.status = false
                                RUqrrfcurkrh(k,false)
                            end
                        end
                    end
                    _G["xCnKGFHhzrfn"](60000)
                end
            end)

        end
    
        if NyoModulesConfigs.jobIntermedGeneralConfig.scubaDiver then
            local cfgScuba = NyoModulesConfigs.jobIntermedGeneralConfig.scubaDiverConfig
            local scubaDiverPlayers = {}

            local function xWRuHJxVNhHg(l,status)
                for k,v in pairs(scubaDiverPlayers) do
                    _G["IMyyRdNtiIsh"]('nyo_modules:scubaDiver/updateConfig',k,l,status)
                end
            end

            _G["RlAdkFhWyBMh"]('scubaDiver/addPlayerToScubaDiverEmp', function(source)
                local user_id = _G["vJghXzhWwgis"](source)
                scubaDiverPlayers[source] = {
                    user_id = user_id,
                    startTime = os.date('%c')
                }
                return cfgScuba
            end)

            _G["aMsDmQWPAyqD"]('scubaDiver/remPlayerFromScubaDiverEmp', function()
                local source = source
                if scubaDiverPlayers[source] then
                    scubaDiverPlayers[source] = nil
                end
            end)

            _G["pbjlHZaIYckt"]('playerDropped',function()
                local source = source
                if scubaDiverPlayers[source] then
                    scubaDiverPlayers[source] = nil
                end
            end)

            _G["LYMIixTMVCDl"]('scubaDiver/upCheckCoords',function(source, k)
                cfgScuba['collectLocations'][k][2] = true
                cfgScuba['collectLocations'][k][3] = cfgScuba['resetTime']
                lbHaliErgCGs(_G["vJghXzhWwgis"](source), 'scubaDiver')
                xWRuHJxVNhHg(k,true)
            end)

            _G["xHAXdcjTentA"](function()
                while true do
                    for k,v in pairs(cfgScuba['collectLocations']) do
                        if v[3] then
                            v[3] = v[3] - 1
                            if v[3] <= 0 then
                                v[3] = nil
                                v[2] = false
                                xWRuHJxVNhHg(k,false)
                            end
                        end
                    end
                    _G["xCnKGFHhzrfn"](1000)
                end
            end)
        end
    end)
else
    error 'Module name has been modified'
    NyoModules.preventCheat()
end