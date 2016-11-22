// Place all the behaviors and hooks related to the matching controller here.
//All this logic will automatically be available in application.js.
//You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready(function(){
	$('.js-ingredients').on('click', function(){
		var sandId = $(".js-sandwich").data("sandwich");
		var url = `/api/sandwiches/${sandId}/ingredients/add`;
		var id = $(this).data("ingredient");
		console.log(id);

		$.ajax({
			type: "POST",
			url: url,
			data: {ingredient_id: id},
			success: doTheThing,
			error: handleError,

		});
	});
});

function doTheThing(response){
	console.log("SUCCESS!!!");
	console.log(response);
	var html = `<li> ${response.name}</li>`;
	var totsCals = $(".js-cals").data("cals");
	console.log(`totsCals ${totsCals}`);
	var cals = response.calories + totsCals;
	$(".js-cals").data(cals);
	$(".js-cals").text(cals);
	$(".js-ingredients-list").append(html);
}

function handleError(err){
	console.log("ERROR");
	console.log(err);
}