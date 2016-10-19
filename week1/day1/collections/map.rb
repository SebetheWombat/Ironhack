#Map returns an array that is the result of applying a block of code to each of 
#the elements of that collections

# added_one = [1,2,3].map {|item| item + 1}
# print "#{added_one}\n"

heros = ["Batman", "Green Lantern", "Superman", "The Flash", "Cyborg", "Wonderwan", "Aquaman"]
heros_lowercase = heros.map {|hero| hero.downcase}
hero_lengths = heros.map {|hero| hero.length}
puts "ORIGINAL ARRAY"
puts "--------------"
puts heros
puts ""
puts "NEW ARRAY"
puts "--------------"
puts heros_lowercase
puts ""
puts "LENGTH OF HERO NAME"
puts "-------------------"
puts hero_lengths

cities = ["tampa","granada","camden","dania","harare"]
cap_cities = cities.map do |city|
	city.capitalize
end
puts ""
puts "Cities:"
puts cap_cities