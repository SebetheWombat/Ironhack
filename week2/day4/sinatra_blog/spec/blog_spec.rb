require_relative("../lib/blog.rb")
require_relative("../lib/post.rb")

RSpec.describe Blog do
	before(:each) do
		@blog = Blog.new()
	end
	describe "#posts" do
		it "returns an array" do
			expect(@blog.posts).to eq([])
		end
		it "returns a list of posts" do
			p = Post.new("title","a","c","text")
			q = Post.new("t","a","c","t")
			@blog.add_post(p)
			@blog.add_post(q)
			expect(@blog.posts).to include(p)
			expect(@blog.posts).to include(q)
		end
	end
	describe "#latest_posts" do
		it "returns a list of posts ordered oldest first" do
			p = Post.new("title","a","c","text")
			oldp = Post.new("t","t","t","t")
			oldp.date += 25
			@blog.add_post(p)
			@blog.add_post(oldp)
			expect(@blog.latest_posts[0]).to eq(oldp)
			expect(@blog.latest_posts[1]).to eq(p)
		end
	end
end