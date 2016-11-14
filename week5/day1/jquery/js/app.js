console.log("Welcome!!!");

$(document).ready(function(){
	$('.js-u').on('click',function(){

		$(this).toggleClass('unicorn-mode');
	});
	$('.js-fader').on('click', function(){
		$(this).siblings().fadeToggle();
		
	});
    $(".js-change-button-color").click(function(){
        $(".js-button-thing").addClass("btn");

        if($(".js-button-thing").hasClass("btn-info")){
        	$(".js-button-thing").addClass("btn-danger");
        	$(".js-button-thing").removeClass("btn-info");
        }
        else{
        	$(".js-button-thing").addClass("btn-info");
        	$(".js-button-thing").removeClass("btn-danger");
        }
    });
    $(".js-button-thing").on("click", function(){
    	$(this).before(`<img src="images/img1.png">`);
    });
    $('p').click(function(){
     	$(this).css("color","#361060");
 	});
 	$('button').on('mouseover',function(){
 		$(this).css('box-shadow','5px 5px 5px #000');
 	});
 	$('button').click(function(){
 		$(this).css('box-shadow','none');
 	});
 	$('.js-pizza').on("click", function(){
 		$('.js-small').prepend("Pizza!!!! 🍕🍕🍕🍕🍕🍕🍕🍕🍕🍕🍕🍕🍕🍕");
 	});
 	$('.empanadas').click(function(){
 		$('.js-heading').after(`<span> EMPANADAS!!!! 😋</span>
 								<a href="#"> SEE MORE EMPANADAS </a>`);
 	});

 	$('#cookies').click(cookieMessage);
 	$('.js-tacos').on('mouseover',function(){
 		$(this).after("<p id='yay'> YAAAAAAAAAAAAAY!</p>");
 	});
 	$('.js-tacos').on('mouseout',function(){
 		$('#yay').remove();
 	});
 	$('.js-tacos').on('click',function(){
 		$('body').html('<h1>LOOK WHAT YOU DID!</h1>');
 	});
 	$('[data-action = "do stuff"]').click(function(){
 		$('p').empty();
 		$('body').css('font-weight','bold');
 		$('.js-image').animate({width: '-=150px'});
 		$('h1').slideToggle(2000);

 	});
 	$('.js-change-img').on('click', changeImage);
});

var imgCount = 0;
var ender = 'jpg';
function changeImage(){
	imgCount = (imgCount + 1)%3;
	if(imgCount===0){
		ender = 'jpg';
	}else{
		ender = 'png';
	}
	console.log('change image works');

	$('.js-image').attr('src',`images/img${imgCount}.${ender}`);
}

function cookieMessage(){
	if($('.js-cookies').length > 0){
 		$('.js-cookies').remove();	
 	}else{


	var cookieContent = `<div class="js-cookies"> <h2>
			🍪 Cookies are good 🍪 </h2>
			<p>Cookies are good for your soul. Here's why: </p>
			<ul>
				<li>Cookies are sweet</li>
				<li>They have 0 calories</li>
				<li>Just a reminder, cookies cannot speak and will never stab you....</li>
			</ul>
			</div>`
		$('.container').append(cookieContent);
	}
};
