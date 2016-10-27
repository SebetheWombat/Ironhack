class Post
	attr_accessor :title, :text, :date, :author, :category
	def initialize(title, author, category, text)
		@title = title
		@author = author
		@category = category
		@text = text
		@date = Time.now()
	end
end