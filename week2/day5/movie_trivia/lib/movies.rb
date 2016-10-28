
class MovieList
	attr_accessor :movies, :year
	def initialize()
		@movies = []
		@year = 0
	end
	def add_movies(movie_list)
		i = 0
		no_repeat_years = movie_list.uniq { |m| m.year }
		until @movies.length >= 9
			if no_repeat_years[i].poster != nil
				@movies << no_repeat_years[i]
			end
			i += 1
		end
	end
	def clear_movies
		@movies = []
	end
	def return_year
		years = []
		@movies.each do |movie|
			years.push(movie.year)
		end
		@year = years[rand(9)]
		@year
	end
end