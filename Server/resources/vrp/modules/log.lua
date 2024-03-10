local channels = {
    pagamentocasas = '',
    Casasvender = '',
    CasasTrocarGaragem = '',
    CasasComprarGaragem = '',
    CasasTransferir = '',
    CasasVender = '',
    CasasRemoverFaltaAluguel = '',
    CasasComprar = '',
    CasasComprarVip = '',
    ApComprar = '',
    ApComprarVip = '',
    SpawnMoney = '',
    LogUnban = '',
    LogBan = '',
    LogNc = '',
    LogBan = '',
    LogBan2Hack = '',
    LogKick = '',
    LogUnWl = '',
    LogWl = '',
    LogGodAll = '',
    LogFix = '',
    LogRemCar = '',
    LogAddCar = '',
    logRetirarDetido = '',
    LogkickSrc = '',
    LogGovernadorMsg = '',
    LogMod = '',
    LogAdmMsg = '',
    LogEnviarDinheiro = '',
    LogSalario = '',
    LogCobrar = '',
    LogChamadosFeitos = '', 
    LogChamadosAtendeu = '',
    LogDenuncia = '',
    LogFinalizar = '',
    LogSocorro = '',
    LogDumpDinheiro = '',
    LogCapuz2 = '',
    LogChat = '',
    LogMorte = '',
    LogAddCoins = '',
    LogBuyCoinsGame = '',
    LogReset = '',
    LogCrash = '',
    LogComandoFesta = '',
    LogHackButton = '',
    LogDm = '',
    LogTp = '',
    LogGod = '', 
    LogAdmin = '',
    LogAnunciosEms = '',
    LogSpawnVeiculo = '',
    LogCL = '',

    --- arsenal policia
    LogClear = '',
}

function sendLog(channel,message,bool)
    local webhookLink = channels[channel]
    if not webhookLink then
        print('Log não enviada. Webhook não declarada corretamente ou nome do canal incorreto.')
        return
    end
    if bool then
        message = '```prolog\n'..message..'\r```'
        requestSendLog(webhookLink, message)
    else
        requestSendLog(webhookLink, message)
    end
end

function requestSendLog(webhookLink, message)
    PerformHttpRequest(webhookLink, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
end

function addWebhook(channel, webhooLink)
    channels[channel] = webhookLink
end