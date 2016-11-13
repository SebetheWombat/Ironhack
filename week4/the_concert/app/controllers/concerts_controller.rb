class ConcertsController < ApplicationController
	def index
		@today = Date.today 
		@concertsToday = Concert.where({date: (Time.now)..(@today.at_midnight + 1.day)})
		@futureConcerts = Concert.where ({date: (@today.at_midnight + 1.day)..(@today.at_midnight + (1.month - @today.day.days))})
		render 'index'
	end

	def show
		@concert = Concert.find(params[:id])
		@comment = @concert.comments.new(params[:concert_id])
		@comments = @concert.comments
		
		render 'show'
	end

	def new
		@concert = Concert.new
		render 'new'
	end

	def create
		@concert = Concert.new(
			artist: params[:concert][:artist],
			venue: params[:concert][:venue],
			city: params[:concert][:city],
			date: params[:concert][:date],
			price: params[:concert][:price],
			description: params[:concert][:description])
		if @concert.save
			redirect_to concert_path(@concert.id)
		else
			render 'new'
		end

	end
end
