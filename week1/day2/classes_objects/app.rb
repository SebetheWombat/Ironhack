require_relative("lib/user.rb")
require_relative("lib/car.rb")

morton = Car.new("Subaru","Legacy","Broom")
morton.noise
jackie = Car.new("Dodge","Ram","Broooooom")
jackie.noise

arthur = User.new("Arthur","theKing@avalon.com",32,"white","male")
morgan = User.new("Morgan","mightbevil@avalon.com",32,"uncertain","female")
merlin = User.new("Merlin","wizardly@avalon.com",3024,"wizard","male")
lance = User.new("Lance","whiteknight@avalon.com",35,"knight","male")
gwen = User.new("Gwen","ladyGwen@avalon.com",27,"lady","female")

lance.pull_sword_from_stone
gwen.pull_sword_from_stone
morgan.pull_sword_from_stone
merlin.pull_sword_from_stone
arthur.pull_sword_from_stone

merlin.greet
gwen.login