require_relative("../lib/post.rb")

RSpec.describe Post do
	before(:each) do
		@post1 = Post.new("t1","me","Testing","c1")
		@post2 = Post.new("t2","you","Hello","c2")
	end

	describe "#title" do
		it "returns title" do
			expect(@post1.title).to eq("t1")
			expect(@post2.title).to eq("t2")
		end
	end

	describe "#date" do
		it "returns date created" do
			posty = Post.new("yo","yo","yo","yo")
			expect(posty.date).to be_within(0.1).of(Time.now)
		end
	end

	describe "#text" do
		it "returns the content of the post" do
			expect(@post1.text).to eq("c1")
			expect(@post2.text).to eq("c2")
		end
	end

	describe "#category" do
		it "returns the category of the post" do
			expect(@post1.category).to eq("Testing")
		end
	end

	describe "#author" do
		it "returns the author of the post" do
			expect(@post2.author).to eq("you")
		end
	end
end 