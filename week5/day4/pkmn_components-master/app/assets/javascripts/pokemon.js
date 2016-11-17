$(document).ready(function(){
	$(".js-show-pokemon").on("click",function(){
		var pokemonUri = $(this).data("pokemon-uri");
		var pokemon = new PokemonApp.Pokemon(pokemonUri);
		pokemon.render();
	});
});

PokemonApp.Pokemon = class{
	constructor(pokemonUri){
		this.apiUrl = pokemonUri;
	}

	render(){
		console.log(`Rendering pokemon with url: ${this.apiUrl}`);
		$.ajax({
			type: "GET",
			url: `/${this.apiUrl}`,
			success: PokemonApp.showPokemon,
			error: PokemonApp.handleError
		});
	}
}

PokemonApp.showPokemon = function(response){
	console.log("SUCCESS");
	console.log(response);
	var types = response.types;
	$('.js-type').empty();
	types.forEach(function(type){
		$('.js-type').append(`${type.name} `);
	});

	$('.js-name').text(response.name);
	$('.js-id').text(`#${response.pkdx_id}`);
	$('.js-height').text(response.height);
	$('.js-weight').text(response.weight);
	$('.js-stats').empty();
	$('.js-stats').append(`<li>HP: ${response.hp}</li>`);
	$('.js-stats').append(`<li>ATTACK: ${response.attack}</li>`);
	$('.js-stats').append(`<li>DEFENSE: ${response.defense}</li>`);
	$('.js-stats').append(`<li>SPECIAL ATTACK: ${response.sp_atk}</li>`);
	$('.js-stats').append(`<li>SPECIAL DEFENSE: ${response.sp_def}</li>`);
	$('.js-stats').append(`<li>SPEED: ${response.speed}</li>`);

	var highestGen = {
		gen: 0
	}
	var descriptionArray = response.descriptions;
	descriptionArray.forEach(function(description){
		var gen = Number(description.name.split("_")[2]);
		if(gen > highestGen.gen){
			highestGen.gen = gen;
			highestGen.url = description.resource_uri;
		}
	});
	var imgUrl = response.sprites[0].resource_uri;
		console.log(highestGen);
	$.ajax({
		type: "GET",
		url: highestGen.url,
		success: PokemonApp.showDescription,
		error: PokemonApp.handleError
	});

	$.ajax({
		type: "GET",
		url: imgUrl,
		success: PokemonApp.putImage,
		error: PokemonApp.handleError
	});

	console.log("AFTER AJAX");
}

PokemonApp.putImage = function(response){
	console.log("IN PUTIMAGE");
	var img = response.image;
	imageNum = img.split("/")[3];
	console.log(imageNum);
	var sprite = `https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${imageNum}`
	$('.js-img').empty();
	$('.js-img').append(`<img src=${sprite}>`);
	console.log(sprite);
	$(".js-pokemon-modal").modal("show");
	$('.js-evolve').on("click",function(){
		$('.js-pokemon-modal').modal("hide");
	});
}
PokemonApp.showDescription= function(response){
	console.log("DESCRIPTION");
	console.log(response.description);
	$('.js-description').text(response.description);
	
}

PokemonApp.handleError = function(error){
	console.log("ERROR");
	console.log(error.handleError);
}