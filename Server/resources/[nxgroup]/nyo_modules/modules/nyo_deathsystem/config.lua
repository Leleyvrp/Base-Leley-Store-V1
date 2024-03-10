NyoModules.registerConfig({
    config = {
        ['configDeathSystem'] = {
           deathText = "Lembre-se que morto não passa call entendeu filho de uma puta?",
           enableGiveUp = true, -- habilita o botão desistir
           giveUpTime = 300, -- tempo em segundos para poder desistir           
           giveUpCoord = vec3(-1038.68,-2738.62,13.82), -- coordenada que vai reviver caso desistir
           enableRevive = false, -- habilita o botão de reviver
           reviveTime = 10, -- tempo em segundos para poder reviver (sem paramedico)
           reviveCost = 100000, -- valor em dinheiro que sera cobrado para reviver
           paymentType = 1, -- Da onde vai tirar o dinheiro ( 1 == mão, 2 == banco + mão)
           deathGrayCam = true,
           deathZoomCam = true,
        },    
    },
})