class WordCount
	def initialize(text)
		@text = text
	end

	def count
		puts @text.split(" ").size
	end
end