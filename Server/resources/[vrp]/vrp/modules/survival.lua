local cfg = module("cfg/survival")
local lang = vRP.lang

function vRP.getHunger(user_id)
  local data = vRP.getUserDataTable(user_id)
  if data then
    return data.hunger
  end
  return 0
end

function vRP.getThirst(user_id)
  local data = vRP.getUserDataTable(user_id)
  if data then
    return data.thirst
  end
  return 0
end

function vRP.setHunger(user_id,value)
  local data = vRP.getUserDataTable(user_id)
  local source = vRP.getUserSource(user_id)

    if data then
        data.hunger = value
        if data.hunger < 0 then 
            data.hunger = 0
        elseif data.hunger > 100 then 
            data.hunger = 100 
        end
        TriggerClientEvent("flush_hud:setHunger",source, 1 - (data.hunger / 100))
    end
end

function vRP.setThirst(user_id,value)
    local data = vRP.getUserDataTable(user_id)
    local source = vRP.getUserSource(user_id)
    if data then
        data.thirst = value
        if data.thirst < 0 then 
            data.thirst = 0
        elseif data.thirst > 100 then 
            data.thirst = 100 
        end
        TriggerClientEvent("flush_hud:setThirst",source, 1 - (data.thirst / 100))
    end
end

function vRP.varyHunger(user_id, variation)
    local data = vRP.getUserDataTable(user_id)
    local source = vRP.getUserSource(user_id)
    if data then
        data.hunger = data.hunger + variation
        local overflow = data.hunger-100
        if overflow > 0 then
            vRPclient._varyHealth(vRP.getUserSource(user_id),-overflow*cfg.overflow_damage_factor)
        end

        if data.hunger < 0 then 
            data.hunger = 0
        elseif data.hunger > 100 then 
            data.hunger = 100 
        end
        TriggerClientEvent("flush_hud:setHunger",source, 1 - (data.hunger / 100))
    end
end
 
function vRP.varyThirst(user_id, variation)
    local data = vRP.getUserDataTable(user_id)
    local source = vRP.getUserSource(user_id)
    if data then
        data.thirst = data.thirst + variation
        local overflow = data.thirst-100
        if overflow > 0 then
            vRPclient._varyHealth(vRP.getUserSource(user_id),-overflow*cfg.overflow_damage_factor)
        end

        if data.thirst < 0 then 
            data.thirst = 0
        elseif data.thirst > 100 then 
            data.thirst = 100 
        end
        TriggerClientEvent("flush_hud:setThirst",source, 1 - (data.thirst / 100))
    end
end


function tvRP.varyHunger(variation)
  local user_id = vRP.getUserId(source)
  if user_id then
    vRP.varyHunger(user_id,variation)
  end
end

function tvRP.varyThirst(variation)
  local user_id = vRP.getUserId(source)
  if user_id then
    vRP.varyThirst(user_id,variation)
  end
end

-- hunger/thirst increase
function task_update()
  for k,v in pairs(vRP.users) do
    vRP.varyHunger(v,cfg.hunger_per_minute)
    vRP.varyThirst(v,cfg.thirst_per_minute)
  end

  SetTimeout(60000,task_update)
end

async(function()
  task_update()
end)
-- handlers

-- init values
AddEventHandler("vRP:playerJoin",function(user_id,source,name,last_login)
    local data = vRP.getUserDataTable(user_id)
    if data.hunger == nil then
        data.hunger = 0
        data.thirst = 0
    end
end)

-- add survival progress bars on spawn
AddEventHandler("vRP:playerSpawn",function(user_id, source, first_spawn)
  local data = vRP.getUserDataTable(user_id)

  TriggerClientEvent("flush_hud:updateBasics",source, data.hunger, data.thirst)
  vRP.setHunger(user_id, data.hunger)
  vRP.setThirst(user_id, data.thirst)
end)