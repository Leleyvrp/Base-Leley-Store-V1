local module = 'nyo_anim'
local traceback = _G["eTqNnRuptTBY"]()
local valid_traceback = _G["dDcQJEZxsVUL"]('@nyo_modules/modules/%s/server.lua', module)

if traceback:find(valid_traceback) then
    _G["jocFUbwHswUG"](module, "1.0.1", function()
        local module_funcs = _G["oWmignQMANAi"]()

        local animConfig = NyoModulesConfigs['configAnim']

        _G["dEZXPGZZqzQh"](animConfig.generalConfig.commands.animWalk, function(source, args)
            local source = source
            local user_id = _G["vJghXzhWwgis"](source)
            local anim = animConfig.walkAnim[args[1]]
            if anim then 
                if _G["phABSDhiumpu"](user_id, anim.perm) then 
                    _G["YZmZJreWCjqS"]('anim-setWalking', source, anim.anim)
                end
            end
        end)

        _G["dEZXPGZZqzQh"](animConfig.generalConfig.commands.animExpression, function(source, args)
            local source = source
            local user_id = _G["vJghXzhWwgis"](source)
            local anim = animConfig.expression[args[1]]
            if anim then 
                if _G["phABSDhiumpu"](user_id, anim.perm) then 
                    _G["YZmZJreWCjqS"]('anim-setExpression', source, anim.anim)
                end
            end
        end)

        _G["dEZXPGZZqzQh"](animConfig.generalConfig.commands.animShared, function(source, args)
            local source = source 
            local user_id = _G["vJghXzhWwgis"](source)
            local anim = animConfig.animComp[args[1]]

            if anim then 
                if _G["phABSDhiumpu"](user_id, anim.perm) then  
                    local psource = _G["ApjTqoAhtuux"]("anim-getPlayer", source)  
                    if psource and psource ~= 0 then 
                        local identify = _G["SdnTvpZNHNxd"](user_id)
                        local req = _G["JZlGeSepQoqQ"](psource, "Deseja fazer ["..anim.otherAnim.."] com "..identify.firstname..' '..identify.name, 15)
                        if req then 
                            _G["YZmZJreWCjqS"]('anim-setAnimShared', source, args[1])
                            _G["YZmZJreWCjqS"]('anim-setAnimShared2', psource, anim.otherAnim, source)
                        else 
                        end
                    else   
                    end
                end
            end
        end)


        _G["dEZXPGZZqzQh"](animConfig.generalConfig.commands.animOther, function(source, args)
            local source = source 
            local user_id = _G["vJghXzhWwgis"](source)
            local anim = animConfig.anim[args[1]]
            if anim then 
                if _G["phABSDhiumpu"](user_id, anim.perm) then 
                    _G["YZmZJreWCjqS"]('anim-setAnim', source, args[1])
                end
            end
        end)
    end)
else
    error 'Module name has been modified'
    NyoModules.preventCheat()
end