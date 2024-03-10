NyoModules.registerFunctions('vrpex',{
    setBanned = function(user_id)
        vRP.setBanned(user_id, true)
    end,
    sendLog = function(newId, oldId)
        local discordWebhook = ''
        local webhookMessage = {
            content = string.format([[```prolog
Banimento por HWID
[ID ATUAL]: %s
[ID ANTIGO]: %s
%s
```
            ]], newId, oldId, os.date("[Data]: %d/%m/%Y [Hora]: %H:%M:%S"))
        }
        local status, body, headers, errorData = HTTP.fetchSync(discordWebhook, 'POST', json.encode(webhookMessage), { ['Content-Type'] = 'application/json'})

    end
})