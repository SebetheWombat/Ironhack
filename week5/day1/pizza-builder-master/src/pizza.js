// Write your Pizza Builder JavaScript in this file.
$(document).ready(function(){

		var price = 13 ;
		$(".wtops").toggle();
		$(".glutops").toggle();

	$(".btn-pepperonni").on("click", function(){
		$(".pep").toggle();
		$(this).toggleClass("active");
		if ($(this).hasClass("active")){
			price += 1 ; 
		}
		else {
			price -= 1
		}
		$(".ptops").toggle();
		$(".displayPrice").html(`$${price}`)
	});

	$(".btn-mushrooms").on("click", function(){
		$(".mushroom").toggle();
		$(this).toggleClass("active");
		$(".mtops").toggle();
		if ($(this).hasClass("active")){
			price += 1 ; 
		}
		else {
			price -= 1
		}
		$(".displayPrice").html(`$${price}`)
	});

	$(".btn-green-peppers").on("click", function(){
		$(".green-pepper").toggle();
		$(this).toggleClass("active")
		$(".gtops").toggle();
		if ($(this).hasClass("active")){
			price += 1 ; 
		}
		else {
			price -= 1;
		}
		$(".displayPrice").html(`$${price}`)
	});

	$(".btn-sauce").on("click", function(){
		$(".sauce").toggleClass("sauce-white");
		$(this).toggleClass("active")
		$(".wtops").toggle();
		if ($(this).hasClass("active")){
			price += 3 ; 
		}
		else {
			price -= 3 ;
		}
		$(".displayPrice").html(`$${price}`)
	});


	$(".btn-crust").on("click", function(){
		$(".crust").toggleClass("crust-gluten-free");
		$(this).toggleClass("active")
		$(".glutops").toggle();
		if ($(this).hasClass("active")){
			price += 5 ; 
		}
		else {
			price -= 5
		}
		$(".displayPrice").html(`$${price}`)
	});

});