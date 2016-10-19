#for i in 1..100
#	puts i * i
#end

heros = ["Batman", "Green Lantern", "Superman", "The Flash", "Cyborg", "Wonderwan", "Aquaman"]
puts "\nDC Heros:"		

heros.each do |hero|	
	puts hero.upcase
	puts "Amount of characters: #{hero.length}"
	puts "---------"	
end						

classmates = ["Intelligent Ike", "Xiamara", "Mute Mary", "Chenje"]
classmates.each do |name|
	puts "Good morning #{name}!"
end
