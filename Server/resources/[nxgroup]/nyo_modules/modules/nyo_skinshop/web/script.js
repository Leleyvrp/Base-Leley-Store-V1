const nyo_skinshop_images = 'http://131.196.198.247/roupasSem3D/'
const nyo_skinshop = new Module('nyo_skinshop');

let lojaDados = null
let dataPartE = null;
let dataPartD = null;
let change = {};
let oldPart = {};
let lojaType = '';
let sexo = 'M';

nyo_skinshop.registerOpenUiFunction((data) => {
    $('.listaCorSkinShop').hide();

    let {
        oldpart: dOldPart,
        config: dConfig,
        categoryE: dCategoryE,
        categoryD: dCategoryD,
        type: dType,
        sexo: dSexo,
        drawaE: dDrawnaE
    } = data

    oldPart = dOldPart;
    change = {};
    lojaDados = dConfig;
    dataPartE = dCategoryE;
    dataPartD = dCategoryD;
    lojaType = dType;
    sexo = dSexo;
    typeOpen = 'skinShop';  

    $('.precoTotal').html(`<span>$</span>0`);
    setSkinShopE(dDrawnaE);
    setTimeout(() => {
        selectShopPart()
    }, 1000)
})

nyo_skinshop.registerCloseUiFunction(() => {
    FetchData('close', {})
})

$('.close').on('click', function () {
    FetchData('close', {})
});

nyo_skinshop.addMessageHandler('updateSkinShop', (data) => {
    dataPartE = data.newPart;
    setSkinShopE(data.drawa);
})

nyo_skinshop.addMessageHandler('updateSkinShopPrice', (data) => {
    $('.precoTotal').html(`<span>$</span>${data.value}`);
})

nyo_skinshop.addMessageHandler('updateSkinShopColor', (data) => {
    setSkinShopColorE(data.drawa, data.roupaId);
})

function inArray(needle, haystack) {
    var length = haystack.length;
    for (var i = 0; i < length; i++) {
        if (haystack[i] == needle) return true;
    }
    return false;
}

const onRangeChange = (type, rotation) => {
    FetchData('shopRotation', { rotation });
}

const shopChangeCam = (type) => {
    $(".all").on("click", () => {
        $(".all").addClass("activeCamera")
        $(".head").removeClass("activeCamera")
        $(".torso").removeClass("activeCamera")
        $(".shoes").removeClass("activeCamera")
        $(".foot").removeClass("foot")
    }) 
    $(".head").on("click", () => {
        $(".all").removeClass("activeCamera")
        $(".head").addClass("activeCamera")
        $(".torso").removeClass("activeCamera")
        $(".shoes").removeClass("activeCamera")
        $(".foot").removeClass("foot")
    }) 
    $(".torso").on("click", () => {
        $(".all").removeClass("activeCamera")
        $(".head").removeClass("activeCamera")
        $(".torso").addClass("activeCamera")
        $(".shoes").removeClass("activeCamera")
        $(".foot").removeClass("foot")
    }) 
    $(".shoes").on("click", () => {
        $(".all").removeClass("activeCamera")
        $(".head").removeClass("activeCamera")
        $(".torso").removeClass("activeCamera")
        $(".shoes").addClass("activeCamera")
        $(".foot").removeClass("foot")
    }) 
    $(".foot").on("click", () => {
        $(".all").removeClass("activeCamera")
        $(".head").removeClass("activeCamera")
        $(".torso").removeClass("activeCamera")
        $(".shoes").removeClass("activeCamera")
        $(".foot").addClass("foot")
    }) 
    FetchData('shopCam', { type });
}
let inCamSkinShop = true

$('.openClose').on('click', function () {
    if (inCamSkinShop) {
        inCamSkinShop = false
        $('.cams .cam:nth-child(2)').delay(200).fadeIn('slow');
        $('.cams .cam:nth-child(3)').delay(500).fadeIn('slow');
        $('.cams .cam:nth-child(4)').delay(800).fadeIn('slow');
        $('.cams .cam:nth-child(5)').delay(1100).fadeIn('slow');
        $('.cams .cam:nth-child(6)').delay(1400).fadeIn('slow');
    } else {
        inCamSkinShop = true
        $('.cams .cam:nth-child(6)').delay(200).fadeOut('slow');
        $('.cams .cam:nth-child(5)').delay(500).fadeOut('slow');
        $('.cams .cam:nth-child(4)').delay(800).fadeOut('slow');
        $('.cams .cam:nth-child(3)').delay(1100).fadeOut('slow');
        $('.cams .cam:nth-child(2)').delay(1400).fadeOut('slow');
    }
});

async function setSkinShopE(drawna) {
    $('.listaCorSkinShop').html('');
    var priceG = lojaDados[dataPartE]['price']
    if (dataPartE == 'p2' || dataPartE == 'p6' || dataPartE == 'p7') {
        $(".listagemSkinShop").append(`
            <div class="item itemSearch" data-id="E${i}" onclick="selectSkinShopItem('E', -1, true, true, 0)">
                <div class="number">R$ ${priceG}</div>
                <div class="img-clothe" style="background-image: url('${nyo_skinshop_images}${dataPartE}/${sexo}/0_0.png')"></div>
                <button>remover</button>
            </div>
        `);
    }

    let listagemSkinShop = document.querySelector('.select-itens')
    let innerHtml = ''
    let selected = 0

    for (var i = 0; i <= (drawna - 1); i++) {
        var exibeItem = false;
        if (lojaType == 'all') {
            exibeItem = true;
        } else if (lojaType == 'exclusive') {
            if (inArray(i, lojaDados[dataPartE]['item'][sexo])) {
                exibeItem = true;
            }
        } else if (lojaType == 'exclude') {
            if (!inArray(i, lojaDados[dataPartE]['item'][sexo])) {
                exibeItem = true;
            }
        }

        if (exibeItem) {

            innerHtml += `
                <div class="clothing-unit itemSearch" data-id="E${i}" onclick="selectSkinShopItem('E', ${i}, true, true, 0)" id="E${dataPartE}${i}"
                style="background-image: url(${nyo_skinshop_images}${dataPartE}/${sexo}/${i}_0.jpg); background-size: 100%;">
                    <active></active>
                    <p class ="branco">${i}</p>
                </div>
            `
            if (oldPart[dataPartE][0] == i) {
                selected = i
            }  
        } 
    }

    listagemSkinShop.innerHTML = innerHtml
    
    selectSkinShopItem('E', selected, true, false, oldPart[dataPartE][1]);
}



function selectShopPart(element) {
    if (!element) return
    let dataPart = element.dataset.idpart;

    $('.listaCorSkinShop').hide();
    $('.menu-container').removeClass('active');
    $(element).addClass('active');

    var arr = { 'part': dataPart, 'menu': 'E' };
    FetchData('changeSkinShopPart', arr);
}

function selectSkinShopColorItem(menu, i, color) {
    
    $('#EC' + i + color).addClass('active');
    ndPart = dataPartE
    oldPart[ndPart][1] = color;
}

function selectSkinShopItem(menu, i, menuChange, change, color) {
    $('.clothing-unit').removeClass('active');
    $('.clothing-unit').find('button').html('vestir');
    
    $('#E' + dataPartE + i).addClass('active');
    $('#E' + dataPartE + i).find('button').html('vestido');
    
    if(!menuChange){
        $('.texture-unit').removeClass('active');
        $(`#EC${i}${color}`).addClass('active');
    }

    $('.listaCorSkinShop').show();

    ndPart = dataPartE;

    oldPart[ndPart][0] = i;
    oldPart[ndPart][1] = color;

    var arr = { 'part': ndPart, 'itemId': i, 'menu': menu, 'menuChange': menuChange, 'change': change, 'color': color };
    FetchData('changeSkinShopMenuColor', arr);
}

function paymentSkinShop() {
   
    FetchData('payment', {});
}

$('.subcategorys .option').on('click', function () {
    $('.subcategorys .option').removeClass('active');
    $(this).addClass('active');

    $('.category-item').hide();
    $('.' + $(this).data('type')).show();
});

function searchSkinShop() {
    var value = $('#searchSkinShop').val();
    var el = $('.itemSearch');

    $.each(el, function (e, e2) {
        let dataId = e2.dataset.id;
        if (dataId.indexOf(value) > -1) {
            $(e2).css("display", "inline-flex");
        } else {
            $(e2).css("display", "none");
        }
    });
}

function setSkinShopColorE(drawna, roupaId) {
    let listagemSkinShop = document.querySelector('.textures')
    let innerHtml = ''
    let itemMax = drawna - 1;
    let selected = 0

    for (var i = 0; i <= itemMax; i++) {
        $('.textures').html('')
        innerHtml += `
        <div class="texture-unit item-color" id="EC${roupaId}${i}" data-id="EC${roupaId}${i}"  onclick="selectSkinShopItem('E', ${roupaId}, false, true, ${i})"  id="EC${dataPartE}${roupaId}${i}"  >
            <div class="texture-image" style="background-image: url(${nyo_skinshop_images}${dataPartE}/${sexo}/${roupaId}_${i}.jpg)"></div>
        </div>
        `

        if (oldPart[dataPartE][1] == i) {
            selected = i
        }
        $(".listaCorSkinShop").append(innerHtml)
    };
    listagemSkinShop.innerHTML = innerHtml
    selectSkinShopColorItem('E', roupaId, selected);
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