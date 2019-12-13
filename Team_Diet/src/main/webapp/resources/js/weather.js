const weather = document.querySelector(".js-weather");
const API_KEY = "19884546fc750ec1740af4000a860335";
const COORDS = 'coords';
const minT = document.querySelector(".min-temp");
const maxT = document.querySelector(".max-temp");
const temp = document.querySelector(".temp");
const place_ = document.querySelector(".place");
const description_ = document.querySelector(".description");
const temperature_ = document.querySelector(".temperature");

function getWeather(lat,lng){
    fetch(`https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lng}&appid=${API_KEY}&units=metric`
    ).then(function(response){
        return response.json()
    }).then(function(json){
        const temperature = json.main.temp;
        const place = json.name;
        const description = json.weather[0].description;
        const temp_min = json.main.temp_min;
        const temp_max = json.main.temp_max;
        minT.innerText = `${temp_min}º`;
        maxT.innerText = `${temp_max}º`;
        temperature_.innerText = `${temperature}ºC`;
        place_.innerText = `${place}`;
        description_.innerText = `${description}`;
        var imgURL = "http://openweathermap.org/img/w/" + json.weather[0].icon + ".png";
        document.getElementById("wImg").setAttribute('src',imgURL)
    })
}


function saveCoords(coordsObj){
localStorage.setItem(COORDS, JSON.stringify(coordsObj));
}

function handleGeoSucces(position){
    const latitude = position.coords.latitude;
    const longitude = position.coords.longitude;
    const coordsObj = {
        latitude,
        longitude
    };
    saveCoords(coordsObj);
    getWeather(latitude,longitude);
}
function handleGeoError(){
    console.log("Cant access geo location");
}
function askForCoords(){
    navigator.geolocation.getCurrentPosition(handleGeoSucces, handleGeoError)
}

function loadCoords(){
    const loadedCoords = localStorage.getItem(COORDS);
    if(loadedCoords === null){
        askForCoords();
    }else{
        //getWeather
        const parsedCoords = JSON.parse(loadedCoords);
        getWeather(parsedCoords.latitude,parsedCoords.longitude);
    }
}

function init(){
    loadCoords();
}

init();
