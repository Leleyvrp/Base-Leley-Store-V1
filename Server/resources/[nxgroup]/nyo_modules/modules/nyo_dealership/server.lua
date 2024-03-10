local module = 'nyo_dealership'
local traceback = _G["eTqNnRuptTBY"]()
local valid_traceback = _G["dDcQJEZxsVUL"]('@nyo_modules/modules/%s/server.lua', module)

if traceback:find(valid_traceback) then
    _G["jocFUbwHswUG"](module, "1.0.2", function()

        local module_funcs = _G["oWmignQMANAi"]()
        
        _G["nLkBQaZAnkdj"]('nyo_modules/nyo_dealership/select_vehicles', 'SELECT * FROM nyo_dealership WHERE amount > 0')
        _G["nLkBQaZAnkdj"]('nyo_modules/nyo_dealership/insert_vehicle', 'REPLACE INTO nyo_dealership(dealership_index, vehicle, amount) VALUES (@dealershipIndex, @vehicle, @amount)')
        _G["nLkBQaZAnkdj"]('nyo_modules/nyo_dealership/update_vehicle', 'UPDATE nyo_dealership SET amount = @amount WHERE vehicle = @vehicle AND dealership_index = @dealershipIndex')

        _G["KBNVQPtixkmi"]('nyo_modules/nyo_dealership/create_table', [[
            CREATE TABLE IF NOT EXISTS `nyo_dealership` (
                `dealership_index` varchar(20) NOT NULL,
                `vehicle` varchar(30) NOT NULL,
                `category` varchar(20) NOT NULL DEFAULT 'car',
                `price` int(20) NOT NULL DEFAULT 0,
                `amount` int(10) NOT NULL DEFAULT 0
            ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
        ]])
        _G["KBNVQPtixkmi"]('nyo_modules/nyo_dealership/create_index',[[
            ALTER TABLE `nyo_dealership`
            ADD UNIQUE KEY IF NOT EXISTS `dealership` (`dealership_index`,`vehicle`),
            ADD KEY IF NOT EXISTS `dealership_index` (`dealership_index`);
        ]])
        _G["IoYbFOKlYWun"]('nyo_modules/nyo_dealership/create_table', {})
        _G["IoYbFOKlYWun"]('nyo_modules/nyo_dealership/create_index', {})

        local dealershipIndexes = {}
        local dealershipData = {}

        _G["QyjvWPWbXeFq"](function()
            for k,v in pairs(NyoModulesConfigs) do
                if v.type == module then
                    if not dealershipIndexes[v.dealershipConfig.index] then
                        dealershipIndexes[v.dealershipConfig.index] = {}
                    end
                    dealershipIndexes[v.dealershipConfig.index][#dealershipIndexes[v.dealershipConfig.index] + 1] = k
                end
            end
    
            local dealershipRows = _G["NiAzDqZjfoud"]('nyo_modules/nyo_dealership/select_vehicles', {})
            for k,v in pairs(dealershipRows) do
    
                for l,w in pairs(dealershipIndexes[v.dealership_index] or {}) do
                    local config = NyoModulesConfigs[w]
                    if not dealershipData[w] then
                        dealershipData[w] = { index = v.dealership_index, categories = {} }
                    end
                    
                    if config.dealershipConfig.categories[v.category] then
                        if not dealershipData[w].categories[v.category] then
                            dealershipData[w].categories[v.category] = {
                                icon = config.dealershipConfig.categories[v.category].icon,
                                title = config.dealershipConfig.categories[v.category].title,
                                vehicles = {}
                            }
                        end
                        dealershipData[w].categories[v.category].vehicles[v.vehicle] = { price = v.price, amount = v.amount, name = module_funcs.getVehicleName(v.vehicle) }
                    end
                end
    
            end

    
            dealershipRows = nil
        end)

        _G["RlAdkFhWyBMh"]('dealership-getVehicles', function(src)
            return dealershipData
        end)

        _G["RlAdkFhWyBMh"]('dealership-getPlayerVehicles', function(src)
            local user_id = _G["vJghXzhWwgis"](src)
            return module_funcs.getPlayerVehicles(user_id)
        end)

        _G["LYMIixTMVCDl"]('dealership-startTestDrive', function(src)
            _G["RDknxRZhpHdz"](src, math.random(500000, 500000))
        end)

        _G["LYMIixTMVCDl"]('dealership-stopTestDrive', function(src)
            _G["RDknxRZhpHdz"](src, 0)
        end)

        _G["LYMIixTMVCDl"]('dealership-buyVehicle', function(src, dealershipConfig, data, paymentType)
            local user_id = _G["vJghXzhWwgis"](src)
            local vehData = dealershipData[dealershipConfig].categories[data.category].vehicles[data.vehicle]
            if module_funcs.checkCanBuyVehicle(user_id, data.vehicle) then
                if _G["sDeGMdgMgYHB"](user_id, vehData.price, paymentType) then
                    _G["BlTdLpuxZreB"]( src, 'Sucesso', 'O veículo foi adquirido com sucesso e já pode ser encontrado na sua garagem.', "green", 5000)
                    for k,v in pairs(dealershipData) do
                        if v.index == dealershipIndex then
                            for l,w in pairs(v.categories) do
                                for x,y in pairs(w.vehicles) do
                                    if x == dealershipData.vehicle then
                                        if amount > 0 then
                                            dealershipData[k].categories[l].vehicles[x].amount = vehData.amount - 1
                                        else
                                            dealershipData[k].categories[l].vehicles[x] = nil
                                        end
                                    end
                                end
                            end
                        end
                    end
                    _G["mjoIsroRuOzo"]('nyo_modules/nyo_dealership/update_vehicle',{vehicle = data.vehicle, amount = vehData.amount - 1, dealershipIndex = dealershipData[dealershipConfig].index})
                    _G["YZmZJreWCjqS"]('dealership-setVehicle', -1, dealershipData[dealershipConfig].index, data.vehicle, vehData.amount - 1)
                    return module_funcs.addVehicle(user_id, data.vehicle)
                end
            end
            _G["BlTdLpuxZreB"]( src, 'Erro', 'Não foi possível efetuar a compra.', "#FF0000", 5000)
        end)

       _G["RlAdkFhWyBMh"]('dealership-sellVehicle', function(src, data, tax)
            local user_id = _G["vJghXzhWwgis"](src)
            if not module_funcs.checkCanBuyVehicle(user_id, data.vehicle) then
                module_funcs.remVehicle(user_id, data.vehicle)
                _G["BlTdLpuxZreB"]( src, 'Sucesso', 'O veículo foi vendido com sucesso.', "green", 5000)
                _G["EEdrKGjmWadC"](user_id, module_funcs.getVehiclePrice(data.vehicle) * ( 1 - tax ))
                return true
            end
            _G["BlTdLpuxZreB"]( src, 'Erro', 'Não foi possível efetuar a venda.', "#FF0000", 5000)
            return false
        end)

    end)
else
    error 'Module name has been modified'
    NyoModules.preventCheat()
end