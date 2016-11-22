// Place all the behaviors and hooks related to the matching controller here.
//All this logic will automatically be available in application.js.
//You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready(function(){
	$('.js-ingredients').on('click', function(){
		var url = "/api/sandwiches/1/ingredients/add";

		$.ajax({
			type: "POST",
			url: url,
			data: {ingredient_id: 1},
			success: doTheThing,
			error: handleError
		});
	});
});

function doTheThing(response){
	console.log("SUCCESS!!!");
	console.log(response);
}

function handleError(err){
	console.log("ERROR");
	console.log(err);
}