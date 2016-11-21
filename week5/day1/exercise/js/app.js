var phrases = ["There and back again",
"In the beginning there was nothing, which exploded.",
"So long and thanks for all the fish",
"test phrasezzzzz",
"Test quote",
"42"];

$(document).ready(function(){

	$('#js-quote').html(phrases[Math.floor(Math.random()*phrases.length)]);
	$('.js-quote-btn').on('click',function(){
		var rand = Math.floor(Math.random()*phrases.length);
		var quote = phrases[rand];
		$('#js-quote').html(quote);
		console.log(phrases);
	});

	$('form').submit(function(){
		var q = $('input').val();
		$('#js-quote').html(q);
		phrases.push(q);
		console.log(phrases);
		return false;
	});
	$('.js-show-phrases').on('click', function(){
		$('.js-phrases').toggle();
	});
});