console.log("Welcome to the JavaScript!");
$(document).ready(function(){
	console.log("You're page is ready 😎");
	promptForLocation();
	beginWatch();
});

function beginWatch(){
	if("geolocation" in navigator){
		navigator.geolocation.watchPosition(watchPos, watchError);
	}
}

function watchPos(info){
	console.log("Watch Position");
	console.log(info);
	var locLat = info.coords.latitude;
	var locLong = info.coords.longitude;

	var html = `<li>Latitude: ${locLat} <br>
					longitude: ${locLong}</li>`

	$('.js-watch').append(html);
}

function watchError(locError){
	console.log("Watch Error");
	console.log(locError);
}

function promptForLocation(){
	if("geolocation" in navigator){
		console.log("Geolocation is available 👀");
		var options = {
			enableHighAccuracy: true,
			timeout: 5000
		}
		navigator.geolocation.getCurrentPosition(showPosition, showError, options);
	}else {
		console.log("User cannot be tracked");
	}
}

function showPosition(location){
	console.log("Found Position");
	console.log(location);
	$(".js-lat").html(location.coords.latitude);
	$(".js-long").html(location.coords.longitude);
}

function showError(error){
	console.log("Could not find position");
	console.log(error);
	var positionError = `<div class="alert alert-warning" role="alert">
							There was an error retrieving your position.
							
							<button class="js-try-again">Try again</button>
							</div>`
	$('body').prepend(positionError);
	$('.js-try-again').on('click', function(){
		location.reload();
	});
}