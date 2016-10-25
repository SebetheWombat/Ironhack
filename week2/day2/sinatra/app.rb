require "sinatra"

get "/" do
	erb(:home)
end

get "/hi" do
	erb(:hipage)
end

get "/about" do
	erb(:about)
end

get "/best_pizza" do
	@toppings = ["pepperonni","sausage","basil","spinach","tomatoes","three cheese"]
	erb(:best_pizza)
end