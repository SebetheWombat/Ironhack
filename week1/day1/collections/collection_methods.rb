class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49),
  Home.new("Bob's place", "Rockland", 2, 34),
  Home.new("Katie's place", "Rockport", 4, 40),
  Home.new("Jame's place", "Camden", 6, 60),
  Home.new("Savannah's place", "Hope", 4, 45),
  Home.new("Robin's place", "Ellsworth", 2, 42)
]

puts "Would you like to arrange the listings by price or capacity?"
by = gets.chomp
puts "Arrange from lowest to highest? (y/n)"
lowtohigh = gets.chomp

if lowtohigh == 'y' || lowtohigh == 'yes'
	homes.sort! {|a,b| a.send(by) <=> b.send(by)}
elsif lowtohigh == 'n' || lowtohigh == 'no'
 	homes.sort! {|a,b| b.send(by) <=> a.send(by)}
end

homes.each do |home|
	puts "#{home.name} in #{home.city}"
	puts "Capacity: #{home.capacity}"
	puts "Price: $#{home.price} a night\n\n"
end

cities = homes.map {|home| home.city}
prices = homes.map {|home| home.price}
total_price = prices.reduce(0.0) { |sum,price|
	sum + price
}
avg = total_price/prices.length

puts "Average house price: $#{avg}"

puts "Filter by city: "
chosen = gets.chomp.downcase

chosen_city = homes.select {|home| home.city.downcase == chosen}
chosen_city.each do |home|
	puts "#{home.name} in #{home.city}"
	puts "Price: $#{home.price} a night\n\n"
end

total_for_city = chosen_city.reduce(0.0) {|sum,home|
	sum + home.price
}
avg_chosen = total_for_city/chosen_city.length
puts "Average price: #{avg_chosen}"

puts "Name your price"
lookup_price = gets.chomp.to_i
match_found = homes.find {|home| home.price == lookup_price}

if match_found == nil
	puts "Sorry no match"
else
	puts "#{match_found.name} in #{match_found.city}"
	puts "Price: $#{match_found.price} per night"
end