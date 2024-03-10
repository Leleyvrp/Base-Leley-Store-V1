const nyo_notify = new Module('nyo_notify');

nyo_notify.registerOpenUiFunction(({ title, content, color, delay, icon }) => {
  
    var cssNotify = '#b1b1b1';
    if (color != undefined) {
        cssNotify = color;
    }

    var nIcon = "fa-exclamation";
    if (icon != undefined) {
        nIcon = icon;
    }
    var number = Math.floor((Math.random() * 1000) + 1);
    if (title === "Alerta" || title === "Aviso" || title === "alerta" || title === "aviso") {
        var html = `
        <div class="NotifyMars alerta wrapper-${number}">
            <div class="top-duration"></div>
            <div class="icon">
                <div class="icon-container">
                    <i class="fa-solid fa-bell"></i>
                </div>
            </div>
            <h1>Aviso</h1>
            <p>${content}</p>
        </div>`;
    } else if (title === "Sucesso" || title === "sucesso") {
        var html = `
        <div class="NotifyMars sucesso">
            <div class="top-duration"></div>
            <div class="icon">
                <div class="icon-container">
                    <i class="fa-solid fa-check"></i>
                </div>
            </div>
            <h1>Sucesso</h1>
            <p>${content}</p>
        </div>`
    } else if (title === "Negado" || title === "negado") {
        var html = `
        <div class="NotifyMars negado">
            <div class="top-duration"></div>
            <div class="icon">
                <div class="icon-container">
                    <i class="fa-solid fa-check"></i>
                </div>
            </div>
            <h1>Negado</h1>
            <p>${content}</p>
        </div>`
    }
    // var html = `
    // <div class="containerNotify" style="border: 2px dashed ${cssNotify}88">
    //     <div class="contentNotify">   
    //         <div class="notify-icon centerNotify" style="background-color: ${cssNotify}50">
    //             <i class="fas ${nIcon} fa-2x" style="filter:drop-shadow(1px 1px 1px #000000);"></i>
    //         </div>         
    //         <div class="textNotify">
    //             <b>${title}</b>:<br>
    //             ${content}
    //         </div>
    //     </div>         
    // </div>`;
    // $(html).appendTo("notify").hide().fadeIn(1000).delay(delay).fadeOut(1000);
    setTimeout(function() {
        $(`.wrapper-${number}`).addClass('hideNotify').removeClass('showNotify');
    }, delay);
    $(html).appendTo("notify").addClass("showNotify").removeClass("hideNotify")
    setTimeout(function() { $(`.wrapper-${number}`).remove() }, (delay + 1000));
})