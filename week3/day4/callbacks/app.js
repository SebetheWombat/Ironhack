"use strict";
var fs = require("fs");
//must install read npm install read
var read = require("read");

fs.readFile("./movies.txt", "utf-8",function(error,contents){
    if(error){
        console.log("File read error!");
    }else{
        var movieArr = contents.split("\n");
        console.log(movieArr);
    }
});

function after5Seconds(){
	console.log("5 seconds");
}

setTimeout(after5Seconds,5000);

setTimeout(function(){
	console.log("2 Seconds are up!");
},2000);

console.log("");
console.log("END OF PROGRAM");
console.log("");