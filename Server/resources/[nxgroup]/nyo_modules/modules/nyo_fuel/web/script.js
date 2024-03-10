let isRechargeGasoline = false

const HTTP_PHOTOS_FUEL = 'http://131.196.198.247/posto/'
const nyo_fuel = new Module('nyo_fuel')

nyo_fuel.registerOpenUiFunction((data) => {
    const texts = data.type === 'eletrical' ? 'AMPERES' : 'LITROS'


    $("#GasIcon").attr("src",data.type === 'eletrical' ? `../modules/nyo_fuel/web/assets/eletric_1.png` :  `../modules/nyo_fuel/web/assets/gasstation.png`);
    $("#GasolineIcon").attr("src",data.type === 'eletrical' ? `../modules/nyo_fuel/web/assets/eletric_2.png` : `../modules/nyo_fuel/web/assets/gasoline.png`);

    $('#TEXT_GASOLINE').text(texts[0].toUpperCase());
    $('#TEXT_LITRO_1').text(texts);
    $('#TEXT_LITRO_2').text(texts);
    $('#AMOUNT_PER_UNITY').text(data.price);
    $('#AMOUNT_TOTAL').text(0);
    $('#GASOLINE_PROGRESS').width(`${parseFloat(data.vfuel.toFixed(2))}%`);
    $('#AMOUNT_GASOLINE_PRICE').text(0);

    isRechargeGasoline = false
    $('.Container').fadeIn('slow');
})

nyo_fuel.registerCloseUiFunction(() => {
    $('.Container').fadeOut('slow')
    FetchData('close', {})
})

nyo_fuel.addMessageHandler('fuelUpdate', (data) => {
    $('#GASOLINE_PROGRESS').width(parseFloat(data.vfuel.toFixed(2))+'%');
    $('#AMOUNT_TOTAL').text(parseFloat(data.totalprice.toFixed(0)));
    $('#AMOUNT_GASOLINE_PRICE').text(parseFloat(data.totalfuel.toFixed(0)));
})


$('#startGasoline').click(function (e) {
    e.preventDefault();

    if (isRechargeGasoline) return;

    isRechargeGasoline = true
    FetchData('fuelSet', ['start']);
});

$('#stopGasoline').click(function (e) {
    e.preventDefault();

    if (!isRechargeGasoline) return;

    isRechargeGasoline = false
    FetchData('fuelSet', ['stop']);
});