require_relative("lib/animal.rb")

thunder = Animal.new("Thunder","Germain Shepherd","Woof?")
bear = Animal.new("Bear","Border Colie","uooooaah")

thunder.chase()
thunder.bark()
bear.chase()
bear.bark()