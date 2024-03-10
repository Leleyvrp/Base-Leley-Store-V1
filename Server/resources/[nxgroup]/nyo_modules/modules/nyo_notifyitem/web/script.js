const image_url = 'http://localhost/images/itens'

const nyo_notifyitem = new Module('nyo_notifyitem')

nyo_notifyitem.registerOpenUiFunction(({item, itemName, qtd, color, delay}) => {
    var cssNotify = '#b1b1b1';
    if(color != ''){
        cssNotify = color;
    }

    item = item.replace('wbody|', '').replace('wammo|', 'mun-');

    var html =`
    <div class="notifyItem" style="border: 2px dashed ${cssNotify}88">
        <div class="contentItem">
            <span style="font-size: 10px">${qtd}x</span>
            <div class="titleItem">${itemName}</div>
            <img src="${image_url}${ParseItemImage(item)}.png">
        </div>
    </div>`;
    $(html).appendTo("notifyItem").hide().fadeIn(1000).delay(delay).fadeOut(1000);
    setTimeout(function(){ $('#notifyNotifyItens').remove() }, (delay+2000));
})