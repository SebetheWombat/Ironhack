$(document).ready(function(){
	console.log("Welcome to the JavaScript");
	findLoc();
	$('.js-locate').on('submit', locSearch);
});

function locSearch(){
	var lat= $('.js-lat').val();
	if(lat === ""){
		lat = "44.2";
	}
	var long = $('.js-long').val();
	if(long===""){
		long = "-69.1";
	}
	var imgSrc = `https://maps.googleapis.com/maps/api/staticmap?center=${lat},${long}&size=600x300&zoom=12`;
	var img = `<img src=${imgSrc}>`
	$('.js-img').empty();
	$('.js-img').append(img);
	return false;
}

function findLoc(){
	if("geolocation" in navigator){
		console.log("Geolocation available");
		navigator.geolocation.getCurrentPosition(success,error);
	}else{
		console.log("Geolocation not available");
	}
}

function success(loc){
	console.log(loc.coords);
	var lat = loc.coords.latitude;
	var long = loc.coords.longitude;
	var imgSrc = `https://maps.googleapis.com/maps/api/staticmap?center=${lat},${long}&size=600x300&zoom=12`;
	var img = `<img src=${imgSrc}>`
	$('.js-img').append(img);
}

function error(err){
	console.log(err);
		var positionError = `<div class="alert alert-warning" role="alert">
							There was an error retrieving your position.
							
							<button class="js-try-again">Try again</button>
							</div>`
	$('body').prepend(positionError);
	var imgSrc = `https://maps.googleapis.com/maps/api/staticmap?center=44.2,-69.1&size=600x300&zoom=12`;
	var img = `<img src=${imgSrc}>`
	$('.js-img').append(img);
	$('.js-try-again').on('click', function(){
		location.reload();
	});
}