function caesarCipher (msg,shift=-3){
	if(shift<0){
		shift = 26+shift
	}
	var len = msg.length;
	result = ""
	for(var i =0; i<len; i++){
		if(msg[i] >= "A" && msg[i] <= "Z"){
			letter = String.fromCharCode(((msg.charCodeAt(i)-65+shift)%26)+65);
		}
		else if(msg[i] >= "a" && msg[i] <= "z"){
			letter = String.fromCharCode(((msg.charCodeAt(i)-97+shift)%26)+97);
		}else{
			letter = msg[i];
		}
		result += letter;
	}
	return result;
}

var encrypted = caesarCipher("Bru98t5#$%us",-3);
console.log(encrypted);