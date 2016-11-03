"use strict";

class Car{
	constructor(model,noise){
		this.model = model;
		this.noise = noise;
		this.wheelNum = 4;
	}

	makeSomeNoise(){
		console.log(this.noise);
	}
}

module.exports = Car;