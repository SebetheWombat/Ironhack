#TODO: Read in titles from file, push to array
#TODO: Use imdb gem to look up title and rating for each movie in array
#TODO: Store title and ratings in an array of hashes
#TODO: For each title, graphically display rating

require("imdb")

movies = []


movie_info = []

movies.each do |movie|
	search_for = Imdb::Search.new(movie)

	result = search_for.movies[0]
	cur_movie = {
		:title => result.title
	 	:rating => result.rating
	}
	movie_info.push(cur_movie)
end

"|#{i}"