$(document).ready(function(){
	console.log("welcome the the javascript");
	$(".js-fetch-characters").on("click", fetchCharacters);
	$(".js-add-character").on('submit', addChar);
});

function fetchCharacters(){
	$.ajax({
		type: "GET",
		url: "https://ironhack-characters.herokuapp.com/characters",
		success: showCharacters,
		error: handleError
	});
};

function addChar(event){
	event.preventDefault();
	var weapon = $(".js-weapon").val();
	var name = $(".js-name").val();
	var occupation = $(".js-occ").val();
	var debt = $('.js-debt').prop("checked");

	if(weapon === ""){
		weapon = "Phaser";
	}

	var charData = {
	name: name,
	occupation: occupation,
	weapon: weapon,
	debt: debt
}
	console.log("submitted");
	$.ajax({
		type: "POST",
		url: "https://ironhack-characters.herokuapp.com/characters",
		data: charData,
		success: updateList,
		error: handleError
	});
}

function updateList(data){
	console.log(data);
}
//function is called behind the scence by ajax. That is where it receives the params
function showCharacters(response){
	$(".js-character-list").empty();
	var characters = response;
	console.log(response);
	characters.forEach(function(character){
		var html = `<li> <h2>${character.name}</h2> 
					<p> <b>Weapon:</b> ${character.weapon}</p>
					<p> <b>Occupation:</b> ${character.occupation}</p>
					<p> <b>Debt:</b> ${character.debt}</p></li>`;

		$(".js-character-list").append(html);
	});
}

function handleError(error){
	console.log("Error!");
	console.log(error.responseText);
}