require "sinatra"
require "sinatra/reloader" if development?

get "/" do
	"Hello, world!"
end

get "/real_page" do
	"The other page"
end

get "/hi" do
	redirect to("/real_page")
end

