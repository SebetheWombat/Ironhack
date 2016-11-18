$(document).ready(function(){
	$('.js-search').on("submit",findSong);
	$('.btn-play').on("click", function(){
		var player = $('.js-player');
		if($(this).hasClass("playing")){
			$('.js-player').trigger('pause');
		}else{
			$('.js-player').trigger('play');
		}
		$('.js-player').on('timeupdate', trackTime);
		$(this).toggleClass("playing");
	});	
	$('.author').on('click', artistLookup);
});

function artistLookup(){
	console.log("lookup artist");
	var artist = $('.author').data("id");
	console.log(artist);
	 var url = `https://api.spotify.com/v1/artists/${artist}`
	$.ajax({
		type: "GET",
		url: url,
		success: showArtist,
		error: handleError
	});
}

function showArtist(response){
	console.log("ARTEEEST");
	console.log(response);
	var popular = response.popularity;
	var followers = response.followers.total;
	var genres = response.genres;

	var photoSrc = "https://cdn.pixabay.com/photo/2016/11/02/17/08/music-1792286_1280.jpg";
	if(response.images.length > 0){
		photoSrc = response.images[0].url;
	}
	$('.js-modal-genres').empty();
	genres.forEach(function(g){
		$('.js-modal-genres').append(`<li>${g}</li>`);
	});
	$('.js-modal-photo').attr('src', photoSrc);
	$('.js-modal-pop').text(popular);
	$('.js-modal-follow').text(followers);
	$('.js-modal-name').text(response.name);
	$('.js-modal').modal('show');
}

function trackTime(){
	var curTime = $('.js-player').prop('currentTime');
	$('.js-bar').attr('value',curTime);
}

function findSong(e){
	e.preventDefault();
	var sInfo = $('.js-song').val();
	var url = `https://api.spotify.com/v1/search?q=${sInfo}&type=track`;
	$.ajax({
		type: "GET",
		url: url,
		success: getSong,
		error: handleError
	});
}

function getSong(response){
	if(response.tracks.items.length === 0){
		console.log("NOOOOOOOOOOOOO");
		var warn = `<div class="alert alert-warning" role="alert">
							There is no song by that title
							<button class="js-warn">OK</button></div>`
		$('body').prepend(warn);
		$('.js-warn').click(function(){
			$('.alert-warning').hide();
		})
	} else{
		console.log("SUCCESS");
		var info = response.tracks.items[0];
		console.log(info);
		var songPrev = info.preview_url;
		var title = info.name;
		var artist = info.artists[0].name;
		var artistId = info.artists[0].id;

		var imgSrc = "https://i.scdn.co/image/04da6dfc1f5f45fdeba938a0cc71cf372524fd43";
		if(info.album.images.length > 0){
			imgSrc = info.album.images[0].url;
		}
		var img = `<img src=${imgSrc}>`
		$('.title').text(title);
		$('.author').text(artist);
		$('.author').data('id',artistId);

		$('.cover').html(img);
		$('.js-player').attr('src', songPrev);
	}
}

function handleError(err){
	console.log("ERROR!");
	console.log(err);
}