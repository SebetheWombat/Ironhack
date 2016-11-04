class Viking{
	constructor(name,health,strength){
		this.name = name;
		this.health = health;
		this.strength = strength;
	}

	attack(enemy){
		return enemy.health - this.strength;
	}
}

class Saxon{
	constructor(){
		this.health = Math.floor(Math.random()*10);
		this.strength = Math.floor(Math.random()*10);
	}

	attack(enemy){
		return enemy.health - this.strength;
	}
}

class Pitfight{
	constructor(v1,v2){
		this.fighter1 = v1;
		this.fighter2 = v2;
	}

	fight(){
		var f1Health = this.fighter1.health;
		var f2Health = this.fighter2.health;
		console.log("\n+-----------FIGHT!-----------+");
		console.log(`|   ${this.fighter1.name}    |    ${this.fighter2.name}   |`);
		console.log("|----------------------------|");
		while(f1Health > 0 && f2Health > 0){
			
			console.log(`|Health: ${f1Health}   |   ${f2Health}         |`);
			f2Health = this.fighter1.attack(this.fighter2);
			this.fighter2.health = f2Health;
			f1Health = this.fighter2.attack(this.fighter1);
			this.fighter1.health = f1Health;
		}
		console.log("+----------------------------+\n");
	}
}

class War{
	constructor(vikings,saxons){
		@vikings = vikings;
		@saxons = saxons;
	}

	attackVillage(pitfights){
		numSaxons = this.saxons.length+1;
		for(var i = 0; i < this.vikings.length; i++){
			saxonSwine = this.saxons[Math.floor(Math.random()*numSaxons)];
			pitfights.fight(this.vikings[i],saxonSwine);
		}
	}
}
module.exports = {
	viking: Viking,
	pitFight: Pitfight
}