local module = 'nyo_carsystem'
local traceback = debug.traceback()
local valid_traceback = string.format('@nyo_modules/modules/%s/server.lua', module)

if traceback:find(valid_traceback) then
    NyoModules.registerNyoModule(module, "1.0.0", function()
   
    end)
else
    error 'Module name has been modified'
    NyoModules.preventCheat()
end