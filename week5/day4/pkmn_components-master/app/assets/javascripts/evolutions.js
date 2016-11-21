$(document).ready(function(){
	$('.js-evolve').on("click",function(){
		console.log("EVOLVING!");
		var id = $('.js-id').text();
		id = id.split("#");
		console.log(id[1]);

		$.ajax({
			type: "GET",
			url: `/api/v1/pokemon/${id[1]}`,
			success: PokemonApp.showEvolutions,
			error: PokemonApp.handleError
		});
	});
});

PokemonApp.showEvolutions = function(response){
	console.log("SHOW EVOLUTIONS");
	var evolutions = response.evolutions;
	$('.js-eChart').empty();
	if(evolutions.length === 0){
		$(".js-eChart").append(`<h2>No Further Evolutions</h2>`);
	}else{
		evolutions.forEach(function(evolution){
			console.log(evolution.to);
			$(".js-eChart").append(`<div data-evolution=${evolution.resource_uri} class="js-poke"> <h2 class="evo-link">${evolution.to}</h2></div>`);
		});
	}
	
	$(".js-evolution-modal").modal("show");
	$(".js-poke").on("click", function(){
		var link = $(this).data("evolution");
		$(".js-evolution-modal").modal("hide");
		console.log(link);
		$.ajax({
			type: "GET",
			url: link,
			success: PokemonApp.showPokemon,
			error: PokemonApp.handleError
		});
	});
}