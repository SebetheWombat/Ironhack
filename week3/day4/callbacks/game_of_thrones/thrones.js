var fs = require('fs');
function fileActions(err, file){ 
    if (err) {
        throw err;
    }
    var episodes = JSON.parse(file);
    	sortedEpisodes = episodes.sort(function(a,b){
    	return a.episode_number-b.episode_number;
    });
   	episodes.forEach(function(episode){
   		searchFor("Jon Snow",episode);
   	});
    function highRatings(value){
		return value.rating >= 8.5;
	}
	var filtered = sortedEpisodes.filter(highRatings);

    filtered.forEach(function(episode){
    	var rating = Math.round(Number(episode.rating));
    	var stars = "";
    	for(var i = 0; i<rating;i++){
    		stars += '*';
    	}
    	console.log(`Title: ${episode.title} ${episode.episode_number}`);
    	console.log(episode.description);
    	console.log(`Rating: ${episode.rating} ${stars}`);

    });
}
console.log("");
fs.readFile("./GoTEpisodes.json", 'utf8', fileActions);

function searchFor(name,episode){
	if(episode.description.indexOf(name) > -1){
		console.log("-----------------------------------------------------------");
		console.log(`Jon Snow has been found in episooooooooode ${episode.title}`);
		console.log("-----------------------------------------------------------");
	}
}
