class CountryCounter
	def count_countries(country, arr)
		counter = 0
		arr.each do |c|
			if country == c
				counter += 1
			end
		end
		counter
	end
end