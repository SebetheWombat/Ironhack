class CommentsController < ApplicationController
	def create
		@concert = Concert.find(params[:concert_id])
		@comment = @concert.comments.new(
			author: params[:comment][:author],
			date: params[:comment][:date],
			comment: params[:comment][:comment])
		if @comment.save
			redirect_to(concert_path(@concert))
		end

	end
end
