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
		this.health = Math.ceil(Math.random()*10);
		this.strength = Math.ceil(Math.random()*5);
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

	fight(mockBattle){
		var f1Health = this.fighter1.health;
		var f2Health = this.fighter2.health;
		var fighting = true;

		if(mockBattle){
			var viking1Health = f1Health;
			var viking2Health = f2Health;
		}

		var enemyName = this.fighter2.name;
		if(enemyName === undefined){
			enemyName = "Saxon Swine";
		}
		console.log("\n+------------FIGHT!------------+");
		console.log(`|   ${this.fighter1.name}    |    ${enemyName}`);
		console.log("|-----------------------------|");
		while(fighting){
			if(!mockBattle && !(this.fighter1.health > 0 && this.fighter2.health > 0)){
				fighting = false;
			}
			else if(mockBattle && !(this.fighter1.health > this.fighter2.strength && this.fighter2.health > this.fighter1.strength)){
				fighting = false;
			}


			console.log(`|Health: ${f1Health}   |   ${f2Health}`);
			this.fighter2.health = this.fighter1.attack(this.fighter2);
			if(this.fighter2.health<=0 && !mockBattle){
				f2Health = "DEAD";
			}else{
				f2Health = this.fighter2.health;
			}


			this.fighter1.health = this.fighter2.attack(this.fighter1);
			if(this.fighter1.health<=0 && !mockBattle){
				f1Health = "DEAD";
			}else{
				f1Health = this.fighter1.health;
			}
		}
		console.log("+------------------------------+\n");
		if(mockBattle){
			this.recover(viking1Health,viking2Health);
		}
	}

	recover(h1,h2){
		this.fighter1.health = h1;
		this.fighter2.health = h2;
	}
}

class War{
	constructor(vikings,saxons){
		this.vikings = vikings;
		this.saxons = saxons;
	}

	attackVillage(){
		var numSaxons = this.saxons.length;
		var livingSaxons = this.saxons;
		var i = 0;
		while(i < this.vikings.length && (numSaxons>0 && this.vikings.length >0)){
			do{
				var saxonSwine = livingSaxons[Math.floor(Math.random()*numSaxons)];
				console.log(saxonSwine)
			}while(saxonSwine.health <= 0 && numSaxons > 0);

			var pitfight = new Pitfight(this.vikings[i],saxonSwine);
			pitfight.fight(false);
			livingSaxons = this.saxons.filter(saxon => saxon.health > 0);
			numSaxons = livingSaxons.length;
			i++;
		}
	}

	displayCasualties(){
		var sd = this.saxons.filter(function(saxon){return saxon.health <= 0;}).length;
		var vd = this.vikings.filter(function(viking){return viking.health <= 0;}).length;

		var deaths = {
			saxons: sd,
			vikings: vd
		}
		return deaths;
	}
}
module.exports = {
	viking: Viking,
	pitFight: Pitfight,
	war: War,
	saxon: Saxon
}