const nyo_deathsystem = new Module('nyo_deathsystem')

var enableGiveUp = false; 
var giveUpTime = 0;
var enableRevive = false; 
var reviveTime = 0;
var reviveTimeCost = 0;

var intervalGiveUp;
var intervalRevive;

nyo_deathsystem.registerOpenUiFunction((data) => {
    enableGiveUp = data.config.enableGiveUp;
    enableRevive = data.config.enableRevive;
    giveUpTime = data.config.giveUpTime;
    reviveTime = data.config.reviveTime;
    reviveCost = data.config.reviveCost;

    $("#deathText").html(data.config.deathText);
    if(enableGiveUp){
        $("#giveUpButton").css("display", "block");
        $("#giveUpButton").prop("disabled",true);
        startGiveUpTime();
    }else{
        $("#giveUpButton").css("display", "none");
    }

    if(enableRevive){
        $("#reviveButton").css("display", "block");
        $("#reviveButton").prop("disabled",true);
        startReviveTime();
    }else{
        $("#reviveButton").css("display", "none");
    }
})


nyo_deathsystem.registerCloseUiFunction(() => {
    if (intervalGiveUp) clearInterval(intervalGiveUp);
    if (intervalRevive) clearInterval(intervalRevive);
})

function startGiveUpTime(){
    intervalGiveUp = setInterval(() => {           
        giveUpTime--;
        $("#giveUpButton").html("DESISTIR ("+giveUpTime+")");
        if (giveUpTime <= 0) {
            $("#giveUpButton").html("DESISTIR");
            $("#giveUpButton").prop("disabled",false);
            clearInterval(intervalGiveUp);          
            intervalGiveUp = null
        }
    }, 1000)
}

function startReviveTime(){
    intervalRevive = setInterval(() => {           
        reviveTime--;
        $("#reviveButton").html("REVIVER ("+reviveTime+")");
        if (reviveTime <= 0) {
            if(reviveCost > 0){                
                $("#reviveButton").html("REVIVER POR R$"+reviveCost);
            }else{                
                $("#reviveButton").html("REVIVER");
            }
            $("#reviveButton").prop("disabled",false);
            clearInterval(intervalRevive);   
            intervalRevive = null
        }
    }, 1000)
}

async function deathRevive(){
    $("#reviveButton").prop("disabled",true);
    const res = await FetchData('deathsystem:revive', { 'time': reviveTime })
    if(res == false){
        $("#reviveButton").prop("disabled",false); 
    }
}

function deathGiveUp(){
    $("#giveUpButton").css("display", "block");
    FetchData('deathsystem:giveUp',{'time': giveUpTime});
}

nyo_deathsystem.disableKeyPress('Escape')