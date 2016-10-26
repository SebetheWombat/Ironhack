require "sinatra"
require "sinatra/reloader" if development?
require "pry" if development?
enable(:sessions)

get "/" do
	@drank = session[:thing]
	erb(:home)
end

get "/hi" do
	erb(:hipage)
end

get "/save_to_session/:thing" do
	session[:thing] = params[:thing]
	redirect to("/")
end

get "/about" do
	erb(:about)
end

get "/best_pizza" do
	@toppings = ["pepperonni","sausage","basil","spinach","tomatoes","three cheese"]
	erb(:best_pizza)
end

get "/howdy" do
	"Hey buddy!"
end

get "/no_page" do
	status(418)
	"I'm a teapot"
end