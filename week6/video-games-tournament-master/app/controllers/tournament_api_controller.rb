class TournamentApiController < ApplicationController
	def index
		tournaments = Tournament.all
		render json: tournaments
	end

	def create
		tournament = Tournament.create(tourn_params)
		render json: tournament, status: 201
	end

	private

	def tourn_params
		params.require(:tournament).permit(:name)
	end
end
