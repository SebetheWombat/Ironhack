"use strict";
var Viking = require("./lib/vikings.js").viking;
var PitFight = require("./lib/vikings.js").pitFight;

var astrid = new Viking("Astrid",18,4);
var yngvild = new Viking("Yngvild",10, 6);

var gunnar = new Viking("Gunnar",25,3);
var rolf = new Viking("Rolf", 15,7);

var snorre = new Viking("Snorre", 13,5);
var turid = new Viking("Turid", 6, 1);

var pitfight = new PitFight(astrid,yngvild);
pitfight.fight();
var pitfight = new PitFight(gunnar,rolf);
pitfight.fight();
var pitfight = new PitFight(snorre,turid);
pitfight.fight();