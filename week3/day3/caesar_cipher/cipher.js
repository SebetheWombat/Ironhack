var encrypt=require("./lib/ciphers.js").enc;
var decrypt=require("./lib/ciphers.js").dcrpt;

var builder = function(shifter){
	return function(msg){
		return encrypt(msg,shifter);
	}
}
var eightCipher = builder(8)
console.log(eightCipher("Brutus"));

var encrypted = encrypt("Brutus 123!@#");
var decrypted = decrypt(encrypted);
console.log(encrypted);
console.log(decrypted);
console.log("");

var key = 8;
var encrypted = encrypt("Brutus 123!@#",key);
var decrypted = decrypt(encrypted,key);
console.log(encrypted);
console.log(decrypted);
console.log("");

key= -32;
var encrypted = encrypt("Brutus 123!@#",key);
var decrypted = decrypt(encrypted,key);
console.log(encrypted);
console.log(decrypted);
console.log("");

key= -26;
var encrypted = encrypt("Brutus 123!@#",key);
var decrypted = decrypt(encrypted,key);
console.log(encrypted);
console.log(decrypted);
console.log("");

key= 3000;
var encrypted = encrypt("Brutus 123!@#",key);
var decrypted = decrypt(encrypted,key);
console.log(encrypted);
console.log(decrypted);
console.log("");