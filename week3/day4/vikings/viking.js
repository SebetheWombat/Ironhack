"use strict";
var Viking = require("./lib/vikings.js").viking;
var PitFight = require("./lib/vikings.js").pitFight;

var astrid = new Viking("Astrid",18,4);
var yngvild = new Viking("Yngvild",10, 6);

var gunnar = new Viking("Gunnar",25,3);
var rolf = new Viking("Rolf", 15,7);

var snorre = new Viking("Snorre", 13,5);
var turid = new Viking("Turid", 6, 1);


setTimeout(function(){
	var pitfight1 = new PitFight(astrid,yngvild);
	console.log(`${astrid.name} and ${yngvild.name} step into the pit!`);
	setTimeout(function(){
		pitfight1.fight();
	},2000);
},500);
	
setTimeout(function(){
	var pitfight2 = new PitFight(gunnar,rolf);
	console.log(`${gunnar.name} and ${rolf.name} step into the pit!`);
	setTimeout(function(){
		pitfight2.fight();
	},2000);
},3000);
	
setTimeout(function(){

	var pitfight3 = new PitFight(snorre,turid);
	console.log(`${snorre.name} and ${turid.name} step into the pit!`);
	setTimeout(function(){
		pitfight3.fight();
	},2000);
},5500);
	