const clockContainer = document.querySelector("#js-clock"),
clockTitle = clockContainer.querySelector("span");

function getTime(){
    const date = new Date();
    var minutes = 60-date.getMinutes();
    var hours = 24-date.getHours();
    var seconds = 60-date.getSeconds();
    if(hours==24){
        hours=date.getHours();
    }
    if(minutes==60){
        minutes=date.getMinutes();
    }
    if(seconds==60){
        seconds=date.getSeconds();
    }

    clockTitle.innerText = `${hours < 10 ? `0${hours}` : hours}:${
        minutes < 10 ? `0${minutes}` : minutes}:${
            seconds < 10 ? `0${seconds}` : seconds}`;
        }
        
        function init() {
            getTime();
            setInterval(getTime,1000);
    }
    init();