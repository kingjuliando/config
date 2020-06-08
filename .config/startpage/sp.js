// Shift + Letter Shortcuts
  document.addEventListener("keypress", function(event) {
    if (event.key == 'g') { window.open('https://github.com','_self')}
    if (event.key == 'c') { window.open('https://calendar.google.com','_self')}
    if (event.key == 't') { window.open('https://twitter.com','_self')}
    if (event.key == 'T') { window.open('https://trello.com','_self')} 
    if (event.key == 'o') { window.open('https://login.live.com/','_self') }
    if (event.key == 'G') { window.open('https://boards.4channel.org/g','_self') } // /g/
    if (event.key == 'p') { window.open('https://boards.4channel.org/wg','_self') } // /wg/ (p==papes)
    if (event.key == 'u') { window.open('https://www.reddit.com/r/UnixPorn','_self')} // /r/UnixPorn
  });


// Get Local Weather
const key = 'a38e3f6015045160e0f5db16f9b7bd66';
function weatherBallon(cityID) {
  fetch('https://api.openweathermap.org/data/2.5/weather?id=' + cityID+ '&appid=' + key)
  .then(function(resp) { return resp.json() }) // Convert data to json
  .then(function(data) {
    drawWeather(data);
  })
  .catch(function() {
    // catch any errors
  });
}
function drawWeather( d ) {
  var celcius = Math.round(parseFloat(d.main.temp)-273.15);
  var description = d.weather[0].description;
  document.getElementById('description').innerHTML = description;
  document.getElementById('temp').innerHTML = celcius + '&deg;C';
  document.getElementById('location').innerHTML = d.name;
  if( description.indexOf('rain') > 0 ) {
    document.body.className = 'rainy';
  } else if( description.indexOf('cloud') > 0 ) {
    document.body.className = 'cloudy';
  } else if( description.indexOf('sunny') > 0 ) {
    document.body.className = 'sunny';
  } else {
    document.body.className = 'clear';
  }
}
window.onload = function() {
  weatherBallon( 2639189);
}

// Time for greeting
var d = new Date();
var t = d.getTime();
var greeting = document.getElementById("greeter");
if (t > 499) {
  greeting.innerHTML = "It's the early hours.";
} else if (t < 500 && t > 1259) {
  greeting.innerHTML = "Good morning.";
} else if (t < 1300 && t > 1799) {
  greeting.innerHTML = "Good afternoon.";
} else if (t < 1600 && t > 2099) {
  greeting.innerHTML = "Good evening.";
} else if (t < 2100 && t > 2399) {
  greeting.innerHTML = "It's night time";
} else {
  greeting.innerHTML = "Hello there";
}


