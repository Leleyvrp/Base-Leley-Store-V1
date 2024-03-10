const nyo_tattoo = new Module('nyo_tattooshop');
const imgTattooShop = 'http://131.196.198.247/tattoo/'


// action.oldpartTattoo, action.config, action.prefix, action.categoryE
nyo_tattoo.registerOpenUiFunction(({oldpart, config, prefix, categoryE}) => {
    oldPartTattoo = oldpart;
    lojaDadosTattoo = config;
    sexoTattoo = prefix;
    dataPartETattoo = categoryE;
    $(".categoryTattooShop").removeClass("activeMTattooShop");
    $(".categoryTattooShop[data-idpart='head']").addClass("activeMTattooShop");
    $('#precoTotalTattooShop').html('<span lang="ui-currency-symbol"></span>' + (new Intl.NumberFormat(nyo_skinshop.currentLanguage, { minimumFractionDigits: 2 }).format(0)));
    $('#actionmenuTattooShop').fadeIn(1);
    setTattooShopE();
})

nyo_tattoo.registerCloseUiFunction((data) => {
    FetchData('close', {})
})

nyo_tattoo.addMessageHandler('updateTattooShopPrice', (data) => {
    
    $('.precoTotalTatto').html(`<span>$</span>${data.value}`);
})

const onRangeChangeTattoo = (type, rotation) => {
    FetchData('shopRotation', {rotation});
}

const shopChangeCamTattoo = (type) => {
    FetchData('shopCam', {type});
}

function setTattooShopE() {
    $('.select-itens-tatto').html('');
    $('#searchTattooShop').val('');   
    var tattooShop;

    if(sexoTattoo == 'M'){
        tattooShop = lojaDadosTattoo['partsM'];
    }else if(sexoTattoo == 'F'){
        tattooShop = lojaDadosTattoo['partsF'];
    }
    if (tattooShop[dataPartETattoo]){
        for (var i = 0; i <= (tattooShop[dataPartETattoo].tattoo.length - 1); i++) {
            
            let partName = tattooShop[dataPartETattoo].tattoo[i].name; 
            let dlcName = tattooShop[dataPartETattoo].tattoo[i].part; 
            let customname = tattooShop[dataPartETattoo].tattoo[i].cname;
            let price = tattooShop[dataPartETattoo].tattoo[i].price;
                $(".select-itens-tatto").append(`

                <div class="tatto-unit itemPTattooShop " data-partname="${partName}" data-id="${i}" data-sexo="${sexoTattoo}" data-parttype="${dataPartETattoo}" onclick="selectTattooShopItem(this)" id="${dataPartETattoo}${i}" >
                <p class="tatto-index">${i}</p>
                <div class="tatto-image" style="background-image: url(${imgTattooShop}${dataPartETattoo}/${dlcName}/${partName}.jpg); background-size: 100%;"></div>
            </div>
                `);

            if(oldPartTattoo[partName]){
                selectTattooShopSelect(i);
            }
        }
    }
}

function selectTattooShopSelect(i){
    if($(`#${dataPartETattoo}${i}`).hasClass('active')){
        $(`#${dataPartETattoo}${i}`).removeClass('active');
        $(`#${dataPartETattoo}${i} active`).html('');
    }else{
        $(`#${dataPartETattoo}${i}`).addClass('active'); 
        $(`#${dataPartETattoo}${i} active`).html('<i class="far fa-check-circle"></i>');
    }
}

function selectTattooPart(element) {    
    let dataPart = element.dataset.idpart;
    let menu = element.dataset.idmenu;
    if(menu == 'E' && dataPart != 'reset'){
        $('.menu-container').removeClass('active');
        $(element).addClass('active');
        $('#searchTattooShop').val('');

        dataPartETattoo = dataPart;        
    }else{
        oldPartTattoo = [];
        FetchData('limpaTattoo', {});
    }

    setTattooShopE();
}

function searchTattooShop(type){
    var value = $('#searchTattooShop').val();
    var el = $('.itemPTattooShop');

    $.each(el, function(e, e2) {
        let dataId = e2.dataset.id
        if (dataId.indexOf(value) > -1) {
            $(e2).css("display","inline-flex");
        }else{
            $(e2).css("display","none");
        }
   });
}

function selectTattooShopItem(element){
    partId = element.dataset.id;
    partName = element.dataset.partname;
    partType = element.dataset.parttype;
    partSexoTattoo = element.dataset.sexo;

    if(oldPartTattoo[partName]){
        oldPartTattoo[partName] = null;
    }else{
        oldPartTattoo[partName] = true;
    }
    

    if($(element).hasClass('active')){
        $(element).removeClass('active');
        $(element).find("active").html('');
    }else{
        $(element).addClass('active'); 
        $(element).find("active").html('<i class="far fa-check-circle"></i>');
    }

    var arr = {'part': partType, 'itemId': partId, 'partName': partName, 'sexo': partSexoTattoo};
    FetchData('changeTattooShopItem', arr);
}


function paymentTattooShop(){
    FetchData('payment',{});
}

$(".finalizar").on("click", () => {
    $(".cameras-container").css("display", "none")
    $(".finalizar-container").css("display", "flex")
    $(".finalizar").addClass("red-bttn")
    $(".cameras").removeClass("red-bttn")
})

$(".cameras").on("click", () => {
    $(".cameras").addClass("red-bttn")
    $(".finalizar").removeClass("red-bttn")
    $(".cameras-container").css("display", "block")
    $(".finalizar-container").css("display", "none")
})