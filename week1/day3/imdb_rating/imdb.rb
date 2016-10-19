require("imdb")

movies = []
movie_info = []

open("movies.txt",'r'){ |movie|
	until movie.eof?
	movies.push(movie.readline.chomp)
	end
}

movies.each do |movie|
	search_for = Imdb::Search.new(movie)
	result = search_for.movies[0]
	cur_movie = {
		:title => result.title,
		:rating => result.rating
	}
	movie_info.push(cur_movie)
end

index = 10

while index > 0 
	print "|"
	movie_info.each do |movie|
		if movie[:rating].round >= index
			print "#|"
		else
			print "_|"
		end
	end
	puts ""
	index -= 1
end

for i in 1..movies.length 
	print "|#{i}"
end

print "|"
puts ""

for i in 0...movies.length 
	puts "#{i+1}. #{movies[i]}"
end


