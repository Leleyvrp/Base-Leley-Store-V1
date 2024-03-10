local module = 'nyo_doors'
local traceback = _G["eTqNnRuptTBY"]()
local valid_traceback = _G["dDcQJEZxsVUL"]('@nyo_modules/modules/%s/server.lua', module)

if traceback:find(valid_traceback) then
    _G["jocFUbwHswUG"](module, "1.0.1", function()

        local configIndiv = {}
        local moduleConfigs = {}
        for k,v in pairs(NyoModulesConfigs) do
            if v.type == 'nyo_doors' then
                moduleConfigs[k] = true
            end
        end
        for k,v in pairs(NyoModulesCoords) do
            if moduleConfigs[v.config] then
                configIndiv[v.id] = {id = v.id, coord = v.coord, model = v.hash, group = v.group, lock = v.lock, text = v.drawText, config = v.config, distance = v.distance}
            end
        end
        moduleConfigs = nil

        _G["RlAdkFhWyBMh"]('doors-getConfig',  function()
            return configIndiv
        end)

        _G["LYMIixTMVCDl"]('nyo_module:OpenDoor', function(src, id)                            
            local cfgDoor = configIndiv[id]
            local doorGroup = cfgDoor.group 
            cfgDoor.lock = not cfgDoor.lock 
            if NyoModulesConfigs[cfgDoor.config].autoClose then 
                cfgDoor.time = NyoModulesConfigs[cfgDoor.config].autoCloseTime
            end
            for k,v in pairs(configIndiv) do 
                if k ~= id then 
                    local cfgDoor2 = configIndiv[k]
                    if cfgDoor2.group == doorGroup and doorGroup ~= '' then 
                        cfgDoor2.lock = not cfgDoor2.lock
                        if NyoModulesConfigs[cfgDoor2.config].autoClose then 
                            cfgDoor2.time = NyoModulesConfigs[cfgDoor2.config].autoCloseTime
                        end
                    end                                    
                end
            end
            
            _G["YZmZJreWCjqS"]('nyoModule:UpdateDoorStatus', tonumber("-1"), id, true, cfgDoor.lock)
        end)


        _G["xHAXdcjTentA"](function()
            while true do
                for k,v in pairs(configIndiv) do 
                    if v.time then 
                        configIndiv[k].time = configIndiv[k].time - 1
                        if configIndiv[k].time <= 0 then 
                            configIndiv[k].lock = true 
                            configIndiv[k].time = nil 
                            _G["YZmZJreWCjqS"]('nyoModule:UpdateDoorStatus', tonumber("-1"), k, false)
                        end
                    end
                end
                _G["xCnKGFHhzrfn"](60000)
            end
        end)
    end)
else
    error 'Module name has been modified'
    NyoModules.preventCheat()
end