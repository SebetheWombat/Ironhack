var countryCounter = require("./lib/count-countries.js");

var countries = ["Puerto Rico","Puerto Rico","USA","USA","USA","USA","USA","Nicaragua","France","Zimbabwe","Mongolia","Argentina","Cuba","Cuba","Cuba","Cuba","Nigeria","Haiti"];
var intro = "Countries represented in this room.";
var peeps_from = "Some of us are from";

console.log("");
console.log(intro);

countries.forEach(function(country){
	console.log(`${peeps_from} ${country}!`);
});
console.log("");

var upcaseCountries = countries.map(function(country){
	return country.toUpperCase();
});

console.log("");
console.log(intro.toUpperCase());
upcaseCountries.forEach(function(country){
	console.log(`${peeps_from.toUpperCase()} ${country}!`);
});
console.log("");

console.log(countryCounter("USA",countries)===5);
console.log(countryCounter("Cuba",countries)===4);
console.log(countryCounter("France",countries)===1);
console.log(countryCounter("Puerto Rico",countries)===2);