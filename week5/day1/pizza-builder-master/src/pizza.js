// Write your Pizza Builder JavaScript in this file.
var price = 13 ;
$(document).ready(function(){	
	$(".wtops").toggle();
	$(".glutops").toggle();

	doTheThing(".btn-pepperonni",".pep",".ptops",1,"");
	doTheThing(".btn-mushrooms",".mushroom",".mtops",1,"");
	doTheThing(".btn-green-peppers",".green-pepper",".gtops",1,"");
	doTheThing(".btn-sauce",".sauce",".wtops",3,"sauce-white");
	doTheThing(".btn-crust",".crust",".glutops",5,"crust-gluten-free");
});

function doTheThing(btn, topping, listClass, adjPrice, tClass){
	$(btn).on("click", function(){
		if(tClass === ""){
			$(topping).toggle();
		}else {
			$(topping).toggleClass(tClass);
		}
		$(this).toggleClass("active")
		$(listClass).toggle();
		if ($(this).hasClass("active")){
			price += adjPrice ; 
		}else {
			price -= adjPrice;
		}
		$(".displayPrice").html(`$${price}`)
	});
}