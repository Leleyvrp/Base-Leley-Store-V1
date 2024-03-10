// const app = {
//     appVars: {
//       descOpen: false,
//     },
//     open: () => {
//       $('body').show();
//     },
//     close: () => {
//       $('body').hide();
//     },
//     buyVeh: () => {
//       // Post
//     },
//     sellVeh: () => {
//       // Post
//     },
//     descStatus: () => {
//       if (!app.appVars.descOpen) {
  
//         $('.icon-desc').addClass('active');
//         $('.info-column').css('filter', 'blur(5px)');
//         $('.desc-column').animate({ "left": "10px" }, "slow" );
  
//         app.appVars.descOpen = true
//       } else {
//         $('.icon-desc').removeClass('active');
//         $('.info-column').css('filter', 'blur(0px)');
//         $('.desc-column').animate({ "left": "300px" }, "slow" );
  
//         app.appVars.descOpen = false
//       }
//     }
// }

const dealership_images = 'http://localhost/images/nyo_garages/'
const nyo_dealership = new Module('nyo_dealership');

function dealershipGenerateBars(amountActive, amount) {
    let text = "";
    for (let i = 1; i <= (amount || 12); i++) {
        text += `
            <div class="shape ${i <= amountActive ? "active" : ""}"></div>
        `;
    }
    return text;
}

let dealershipConfig = {}
let dealershipData = {}

nyo_dealership.registerOpenUiFunction((data) => {

    dealershipConfig = data.config
    dealershipData = data.dealershipData

    let categoriesAside = document.querySelector('#actionMenuConce mainConce menu aside')
    let categoriesSection = document.querySelector('#actionMenuConce mainConce menu section')
    let categoriesHTML = ``
    let vehiclesHTML = null

    document.getElementById('dealership-name').innerHTML = dealershipConfig.name

    for (let [k, v] of Object.entries(data.dealershipData.categories)) {
        if (k != 'playerVehicles') {
            categoriesHTML += `
                <div class="item ${vehiclesHTML ? '' : 'active'}" onclick="selectDealershipCategory('${k}', this)" ><i class="${v.icon}" style="color: #FFFFFF;"></i></div>
            `
            if (!vehiclesHTML) {
                document.getElementById('dealership-category-name').innerHTML = dealershipConfig.categories[k].title
                vehiclesHTML = ``
                for (let [l, w] of Object.entries(v.vehicles)) {
                    vehiclesHTML += `
                    <div class="item" onclick="selectDealershipVehicle('${l}', '${k}', this)" data-vehicle="${w.name}" >
                        <img src="${dealership_images}/${l}.png">
                        <div class="item-info">
                        <span>${w.name}</span><br>
                        <small>R$${w.price}</small>
                        </div>
                    </div>
                    `
                }
            }
        }
    }

    if (data.dealershipData.categories.playerVehicles)
    categoriesHTML = `
        <div class="item" onclick="selectDealershipCategory('playerVehicles', this)" ><i class="fas fa-cars" style="color: #FFFFFF;"></i></div>
        ${categoriesHTML}
    `

    categoriesAside.innerHTML = categoriesHTML
    categoriesSection.innerHTML = vehiclesHTML

    document.querySelector('#actionMenuConce mainConceMeio').style.display = 'none'

})

nyo_dealership.addMessageHandler('updateUI', (data) => {

    dealershipConfig = data.config
    dealershipData = data.dealershipData

    let categoriesAside = document.querySelector('#actionMenuConce mainConce menu aside')
    let categoriesSection = document.querySelector('#actionMenuConce mainConce menu section')
    let categoriesHTML = ``
    let vehiclesHTML = null

    document.getElementById('dealership-name').innerHTML = dealershipConfig.name

    for (let [k, v] of Object.entries(data.dealershipData.categories)) {
        if (k != 'playerVehicles') {
            categoriesHTML += `
                <div class="item ${vehiclesHTML ? '' : 'active'}" onclick="selectDealershipCategory('${k}', this)" ><i class="${v.icon}" style="color: #FFFFFF;"></i></div>
            `
            if (!vehiclesHTML) {
                document.getElementById('dealership-category-name').innerHTML = dealershipConfig.categories[k].title
                vehiclesHTML = ``
                for (let [l, w] of Object.entries(v.vehicles)) {
                    vehiclesHTML += `
                    <div class="item" onclick="selectDealershipVehicle('${l}', '${k}', this)" data-vehicle="${w.name}" >
                        <img src="${dealership_images}/${l}.png">
                        <div class="item-info">
                        <span>${w.name}</span><br>
                        <small>R$${w.price}</small>
                        </div>
                    </div>
                    `
                }
            }
        }
    }

    if (data.dealershipData.categories.playerVehicles)
    categoriesHTML = `
        <div class="item" onclick="selectDealershipCategory('playerVehicles', this)" ><i class="fas fa-cars" style="color: #FFFFFF;"></i></div>
        ${categoriesHTML}
    `

    categoriesAside.innerHTML = categoriesHTML
    categoriesSection.innerHTML = vehiclesHTML

    document.querySelector('#actionMenuConce mainConceMeio').style.display = 'none'

})

nyo_dealership.registerCloseUiFunction(() => {
    FetchData('close',{})
})

function selectDealershipCategory(category, self) {
    document.querySelector('#actionMenuConce mainConce menu aside .active').classList.remove('active')
    self.classList.add('active')
    
    let categoriesSection = document.querySelector('#actionMenuConce mainConce menu section')
    let vehiclesHTML = ``
    document.getElementById('dealership-category-name').innerHTML = category == 'playerVehicles' ? 'Seus veículos' : dealershipConfig.categories[category].title

    for (let [l, w] of Object.entries(dealershipData.categories[category].vehicles)) {
        vehiclesHTML += `
        <div class="item" onclick="selectDealershipVehicle('${l}', '${category}', this)" data-vehicle="${w.name}" >
            <img src="${dealership_images}/${l}.png">
            <div class="item-info">
            <span>${w.name}</span><br>
            <small>R$${w.price}</small>
            </div>
        </div>
        `
    }

    categoriesSection.innerHTML = vehiclesHTML
}

function dealershipStartTestDrive() {
    FetchData('startTestDrive', {})
    document.getElementById('actionMenuConce').style.display = 'none'
    document.getElementById('concealert').style.display = 'flex'
}

nyo_dealership.addMessageHandler('stopTestDrive', (data) => {
    document.getElementById('actionMenuConce').style.display = 'flex'
    document.getElementById('concealert').style.display = 'none'
})

let dealershipSpawningVehicle = false


function selectDealershipVehicle(vehicle, category, self) {
    if (dealershipSpawningVehicle) return
    dealershipSpawningVehicle = true
    let _active = document.querySelector('#actionMenuConce mainConce menu section .active')
    if (_active) _active.classList.remove('active')
    self.classList.add('active')

    const vehData = dealershipData.categories[category].vehicles[vehicle]
    const mainConce = document.querySelector('#actionMenuConce mainConceMeio')

    FetchData('setVehicle', { vehicle, category }, () => {
        dealershipSpawningVehicle = false
    })

    mainConce.style.display = 'block'
    mainConce.innerHTML = `
    <header>
        <div class="title">
        <h1>Estatistícas</h1>
        <small>do veiculo</small>
        </div>
        <div class="price"><div class="prefix">$</div> ${vehData.price}</div>
        <div class="btns">
        <button onclick="FetchData('${category == 'playerVehicles' ? 'sellVehicle' : 'buyVehicle'}', { category: '${category}', vehicle: '${vehicle}' })"><i class="fas fa-shopping-cart"></i><div class="toltip">${category == 'playerVehicles' ? 'vender' : 'comprar'}</div></button>
        <button onclick="dealershipStartTestDrive()"><i class="fas fa-tachometer-alt-fastest"></i><div class="toltip" >test-drive</div></button>
        </div>
    </header>
    <section>
        <div class="column">
        <div class="row">
            <span>Velocidade</span>
            <small>${Math.floor(vehData.maxSpeed)} KM/H</small>
            <div class="bar">
                ${dealershipGenerateBars((12 * vehData.maxSpeed) / 250)}
            </div>
        </div>
        <div class="row">
            <span>Freio</span>
            <small>${vehData.maxBraking.toFixed(2)}</small>
            <div class="bar">
            ${dealershipGenerateBars((12 * vehData.maxBraking) / 1.5)}
            </div>
        </div>
        </div>
        <div class="column" style="position:relative;top: -70px;">
        <div class="row">
            <span>Tração</span>
            <small>${vehData.maxTraction.toFixed(2)}</small>
            <div class="bar">
            ${dealershipGenerateBars((12 * vehData.maxTraction) / 3)}
            </div>
        </div>
        <div class="row">
            <span>Quantidade de Assentos</span>
            <small>${vehData.maxSeats}</small>
            <div class="bar">
            ${dealershipGenerateBars(vehData.maxSeats, 10)}
            </div>
        </div>
        </div>
    </section>
    `
}

document.querySelector('#dealership-search').onkeyup = () => {
    var el = $('#actionMenuConce mainConce menu section .item');
    var value = document.querySelector('#dealership-search').value.toLowerCase();

    $.each(el, function (e, e2) {
        let dataId = e2.getAttribute('data-vehicle').toLowerCase();
        if (dataId.indexOf(value) > -1) {
            $(e2).css("display","inline-flex");
        }else{
            $(e2).css("display","none");
        }
   });
}