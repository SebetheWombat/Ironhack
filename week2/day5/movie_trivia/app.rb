require "bundler/setup"
require "sinatra"
require "sinatra/reloader" if development?
require "imdb"
require "pry"
require_relative("lib/movies.rb")

movies = MovieList.new()
get "/" do
	erb(:home)
end

post "/search_results" do
	the_search = Imdb::Search.new(params[:title])
	movies.clear_movies
	movies.add_movies(the_search.movies.take(15))
	@movies = movies.movies
	@year = movies.return_year
	erb(:results)
end

post "/answer" do
	if params[:year] == movies.year.to_s
		"You got it!"
	else
		"What a loser! How could you not know that?"
	end
end