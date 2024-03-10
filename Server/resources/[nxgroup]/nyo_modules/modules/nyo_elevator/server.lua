local module = 'nyo_elevator'
local traceback = _G["eTqNnRuptTBY"]()
local valid_traceback = _G["dDcQJEZxsVUL"]('@nyo_modules/modules/%s/server.lua', module)

if traceback:find(valid_traceback) then
    _G["jocFUbwHswUG"](module, "1.0.0", function()
        
    end)
else
    error 'Module name has been modified'
    NyoModules.preventCheat()
end