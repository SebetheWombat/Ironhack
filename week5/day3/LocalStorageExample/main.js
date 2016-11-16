var $color_button = $('.color-changer');

function changeColor(event){
  var color = $(event.target).data('color');
   $("body").css("background-color", color);
   window.localStorage.setItem("background", color);
  console.log(color);
}

$(document).ready(function(){
	$color_button.on("click", changeColor);
	loadDefaultColor();
	loadImages();
});

function loadImages(){
	var data  = prompt("Link to favorite image?");
	// if(window.localStorage.getItem("imgs")){
	var img = [];
	img = (JSON.parse(localStorage.getItem("imgs")));
	img.push(data);
	console.log(img);
	localStorage.setItem("imgs", JSON.stringify(img));

	img.forEach(function(image){
		$('.js-img').append(`<img src=${image}>`);
	});
	// }	
}

function loadDefaultColor(){
	if(window.localStorage.getItem("background")){
		var savedColor = window.localStorage.getItem("background");
		$("body").css("background-color", savedColor);
	}
}