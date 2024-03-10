const navshop_image_url = 'http://131.196.198.247/itens/'

var shopType = 'sell';
var navConfig;

const nyo_navshop = new Module('nyo_navshop');

function setNavShopNui({ config }) {
    navConfig = config;
    $(".listagemNavShop").html('');
    var shopIndex = 1;

    let buyAmount = 0;
    let sellAmount = 0;

    for (const [key, value] of Object.entries(config)) {
        if (value.type == shopType) {
            shopButton = ''
            if (shopType == 'buy') {
                buyAmount++
                shopButton = 'Comprar';
            } else {
                sellAmount++
                shopButton = 'Vender';
            }

            valueType = '';
            if (value.typeMoney == 'ilegal') {
                valueType = '(SUJO)';
            }
            $(".listagemNavShop").append(`
            <div class="itemNav">
                <div class="overlay" onClick="navShopAction(${shopIndex}, '${value.index}')">${shopButton}</div>
                <img src="${navshop_image_url}${ParseItemImage(value.index)}.png" width="120" height="120">
                <div class="item-info">
                    <span>${value.name}</span><br>
                    <small>R$ ${value.price}${valueType}</small>
                </div>
            </div>
            `);
        }
        shopIndex++;
    }



    $('.itemNav').mouseenter(function() {
        $(this).addClass("active");
    });

    $('.itemNav').mouseleave(function() {
        $(this).removeClass("active");
    });
}

nyo_navshop.registerOpenUiFunction((data) => {
    let buyAmount = 0;
    let sellAmount = 0;

    for (const [key, value] of Object.entries(data.config)) {
        if (value.type == 'buy') {
            buyAmount++
        } else {
            sellAmount++
        }
    }

    if (buyAmount > 0) {
        document.getElementById("menuBuy").style.display = 'flex'
        shopType = 'buy'
    } else document.getElementById("menuBuy").style.display = 'none'

    if (sellAmount > 0) {
        document.getElementById("menuSell").style.display = 'flex'
        shopType = 'sell'
    } else document.getElementById("menuSell").style.display = 'none'

    setNavShopNui(data)
})

function navShopMenu(t) {
    shopType = t;
    $(".itemMenu").removeClass("active");
    if (shopType == 'buy') {
        $("#menuBuy").addClass("active");
        $(".tituloNavShop").html("<b>Compras</b>");
    } else {
        $("#menuSell").addClass("active");
        $(".tituloNavShop").html("<b>Vendas</b>");
    }
    setNavShopNui({ config: navConfig });
}


function navShopAction(index, item) {
    var arr = { index, item };
    FetchData('navShopNuiAction', arr);
}

nyo_navshop.registerCloseUiFunction(() => {
    FetchData('close', {})
})