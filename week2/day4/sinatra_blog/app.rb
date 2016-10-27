require "sinatra"
require "pry"
require_relative("lib/blog.rb")
require_relative("lib/post.rb")

blog = Blog.new()
olderpost = Post.new("Heyyyyyy Budddy","Majestic Wombat","category","This is the super awesome content for the heeeyyyyyy buddddyyy title!")
olderpost.date += 1
blog.add_post(olderpost)
blog.add_post Post.new("Title","Sebe the Magnificent","category","Content for Title:title")


get "/" do
	@posts = blog.latest_posts #posts represents array of posts in Blog class
	erb(:home)
end

get "/content/:index" do
	@post = blog.latest_posts[params[:index].to_i]
	erb(:content)
end

get "/newPost" do
	erb(:new_post)
end

post "/addPost" do
	new_post = Post.new(params[:title],params[:author],params[:category],params[:content])
	blog.add_post(new_post)
	redirect to("/")
end