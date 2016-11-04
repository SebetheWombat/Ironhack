"use strict";
var Viking = require("./lib/vikings.js").viking;
var PitFight = require("./lib/vikings.js").pitFight;
var War = require("./lib/vikings.js").war;
var Saxon = require("./lib/vikings.js").saxon;

var astrid = new Viking("Astrid",18,4);
var yngvild = new Viking("Yngvild",10, 6);

var gunnar = new Viking("Gunnar",25,3);
var rolf = new Viking("Rolf", 15,7);

var snorre = new Viking("Snorre", 13,5);
var turid = new Viking("Turid", 6, 1);

var vikings = [astrid,yngvild,gunnar,rolf,snorre,turid];
var saxons = [];

function makeSaxons(){
	for(var i = 0; i<10; i++){
		var saxonSwine = new Saxon();
		saxons.push(saxonSwine);
	}
}
makeSaxons();

setTimeout(function(){
	var pitfight1 = new PitFight(astrid,yngvild);
	console.log(`${astrid.name} and ${yngvild.name} step into the pit!`);
	setTimeout(function(){
		pitfight1.fight(true);
	},2000);
},500);
	
setTimeout(function(){
	var pitfight2 = new PitFight(gunnar,rolf);
	console.log(`${gunnar.name} and ${rolf.name} step into the pit!`);
	setTimeout(function(){
		pitfight2.fight(true);
	},2000);
},3000);
	
setTimeout(function(){
	var pitfight3 = new PitFight(snorre,turid);
	console.log(`${snorre.name} and ${turid.name} step into the pit!`);
	setTimeout(function(){
		pitfight3.fight(true);
	},2000);
},5500);


setTimeout(function(){
	console.log("TIME FOR WAR!!!");
	var i = 0;
	while(i<2){
		console.log(`\nWAVE ${i+1}\n`);
		var war = new War(vikings,saxons);
		war.attackVillage();
	 	war.displayCasualties();

	 	vikings = vikings.filter(function(viking){
			return viking.health > 0;
		});
		saxons = saxons.filter(function(saxon){
			return saxon.health > 0;
		});
		i++;
		console.log(vikings);
		console.log(saxons);
	}
		

	
},8000);


	