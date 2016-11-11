class ConcertsController < ApplicationController
	def index
		@concertsToday = Concert.all.select { |c| c.date > Time.now && c.date < Date.today.at_midnight + 1.day}
		@futureConcerts = Concert.all.select { |c| c.date > Date.today.at_midnight + 1.day}
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
