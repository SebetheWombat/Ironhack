function encrypt(msg,shift= -3){
	if(shift<0){
		shift = 26 - (-shift % 26);
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

function decrypt(msg,shift = -3){
	shift -= (shift*2);
	result = encrypt(msg,shift);
	return result;
}



module.exports = {
	enc: encrypt,
	dcrpt: decrypt
}