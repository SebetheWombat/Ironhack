class TextInspectionsController < ApplicationController
	def new
		render 'new'
	end

	def create
		@text = params[:text_inspection][:user_text]
		@word_count = @text.split(" ").length
		@reading_time = (@word_count/275.0) * 60
		@word_frequency = Hash.new(0)
		@text.split(" ").each do |word|
			@word_frequency[word] += 1
		end
		@too_many_words = @word_frequency.sort_by {|key,value| -value}[0...10]


		render "results"
	end
end
