#Transforms a collection into a single value applying a block of code many times

#Equivalent .each method
heros = ["Batman", "Green Lantern", "Superman", "The Flash", "Cyborg", "Wonder Woman", "Aquaman"]
sum = 0
heros.each do |hero|
	sum += hero.length
end
puts "Average: #{sum.to_f/heros.length}"

#reduce
total = heros.reduce(0) {|sum,hero|
	sum + hero.length
}

puts "Average: #{total.to_f/heros.length}"