function countryCounter(country,arr){
	var count = 0;
	arr.forEach(function(c){
		if(country === c){
			count++;
		}
	})
	return count;
}

module.exports = countryCounter;