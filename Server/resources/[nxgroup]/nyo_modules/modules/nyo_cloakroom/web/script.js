const imgCloakRoom = 'http://131.196.198.247/cloakroom/'
const nyo_cloakroom = new Module('nyo_cloakroom')

nyo_cloakroom.registerOpenUiFunction(loadCloakRoom)

nyo_cloakroom.registerCloseUiFunction(() => {
    FetchData('close', {})
})

var sexoCloak = "M";

function loadCloakRoom(data){
    for (var i=0; i<$('.itemCloak').length; i++) {
        $(".owl-carousel").trigger('remove.owl.carousel',[i]).trigger('refresh.owl.carousel');
    }

    if(data.config.permRetirar){
         $('.owl-carousel').trigger('add.owl.carousel', [`
         <div class="itemCloak">
            <img src="${imgCloakRoom}/retirar.png">
            <div class="info">
            <small lang="ui-container-title"></small>
            <h3 lang="ui-remove-clothes-option"></h3>
            <button onClick="useClothes(-1)" lang="ui-remove-button"></button>
            </div>
        </div>`]).trigger('refresh.owl.carousel');
    }

    sexoCloak = data.sexo;
    var dataCloak = data.config.pressets[sexoCloak];
    dataCloak.map((v, k) => {
        $('.owl-carousel').trigger('add.owl.carousel', [`
        <div class="itemCloak">
            <img src="${imgCloakRoom}/${v.img}.png">
            <div class="info">
            <small lang="ui-container-title"></small>
            <h3>${v.name}</h3>
            <button onClick="useClothes(${k})" lang="ui-dress-button"></button>
            </div>
        </div>`]).trigger('refresh.owl.carousel');
    })

    $('#actionMenuCloakRoom').fadeIn(1);   
}

function useClothes(id){
    FetchData('changeClothe', {id, sexo: sexoCloak});
}

