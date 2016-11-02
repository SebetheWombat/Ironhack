function average(numstring){
	nums = numstring.split(":");
	len = nums.length;
	n = nums.reduce(function(first,num){
		return Number(first) + Number(num);
	});
	return n/len;
}

module.exports = average;