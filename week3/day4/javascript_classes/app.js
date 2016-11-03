//Object literals

// var thunder= {
// 	name: "Thunder",
// 	breed: "German Shepherd",
// 	sound: "Woof?",

// 	chase: function(){
// 		console.log(`${this.name} is chasing cars.`);
// 	},

// 	bark: function(){
// 		console.log(this.sound);
// 	}
// }
// thunder.bark();
// thunder.chase();

// var bear = {
// 	name: "Bear",
// 	breed: "Border Collie",
// 	sound: "Uoooooah",

// 	chase: function(){
// 		console.log(`${this.name} is chasing cars.`);
// 	},

// 	bark: function(){
// 		console.log(this.sound);
// 	}
// }

// bear.chase();
// bear.bark();

//Prototype

var Animal = require("./lib/animal.js");
var thunder = new Animal("Thunder", "German Shepherd", "Woof?");
thunder.chase();
thunder.bark();
console.log("");

var bear = new Animal("Bear","Border Collie","Uoooah");
bear.chase();
bear.bark();
