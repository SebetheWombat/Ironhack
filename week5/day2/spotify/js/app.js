$(document).ready(function(){
	$('.js-artist-search').on('submit', findArtist);
	$('.artists').on('click','.left', findAlbum);
});

function findAlbum(){
	var id = $(this).data("artist-id");
	var url = `https://api.spotify.com/v1/artists/${id}/albums`;
	$.ajax({
		type: 'GET',
		url: url,
		success: showAlbum,
		error: handleError
	});
}

function showAlbum(response){
	$('.js-albums').empty();
	$('.js-albums').append(`<h1>Albums:</h1`);
	console.log(response.items[0].name);
	var albums = response.items;
	albums.forEach(function(album){
		console.log(album.name);
		var html = `<p> ${album.name} </p>`;
		$('.js-albums').append(html);
	});
	$('.js-albums').show();
	$('.js-albums').on('click',function(){
		$(this).hide();
	});
}

function findArtist(e){
	e.preventDefault();
	var artist = $('.js-name').val();
	console.log(artist);
	var url= `https://api.spotify.com/v1/search?type=artist&q=${artist}` 

	$.ajax({
		type: 'GET',
		url: url,
		success: showUp,
		error: handleError
	});
}

function showUp(response){
	$('.artists').empty();
	var art = response.artists.items;

	art.forEach(function(a){
		// console.log(a.name);
		// console.log(a.images);
		// console.log(a.id);
		var id = a.id;
		var img = "https://cdn.pixabay.com/photo/2016/09/08/16/54/emotiguy-1654862_1280.png";
		if(a.images.length > 0){
			img = a.images[0].url;
		}
		var html = `<div data-artist-id=${id} class="left"> <h3>${a.name}</h3>
					<img class="profile" src=${img}> </div>`
		$('.artists').append(html);
	});

	$('.artists').css('border','3px ridge #888');
	$('.artists').css('background', '#edf5f8');
	$('.artists').append(`<div style="clear: both;"></div>`);	 
}

function handleError(error){
	console.log("Error!");
	console.log(error.responseText);
}