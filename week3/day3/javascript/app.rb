require_relative("lib/country_counter.rb")

countries = ["Puerto Rico","Puerto Rico","USA","USA","USA","USA","USA","Nicaragua","France","Zimbabwe","Mongolia","Argentina","Cuba","Cuba","Cuba","Cuba","Nigeria","Haiti"];
intro = "Countries represented in this room."
peeps_from = "Some of us are from"

country_thing = CountryCounter.new()
p country_thing.count_countries("USA",countries) == 5
p country_thing.count_countries("Cuba",countries) == 4
p country_thing.count_countries("Puerto Rico",countries) == 2
p country_thing.count_countries("France",countries) == 1

puts ""
puts intro
countries.each do |country|
	puts "#{peeps_from} #{country}!"
end
puts ""

upcase_countries = countries.map{ |country| country.upcase }

puts ""
puts intro.upcase
upcase_countries.each do |country|
	puts "#{peeps_from.upcase} #{country}!"
end
puts ""