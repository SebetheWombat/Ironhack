class SandwichViewsController < ApplicationController
	before_action :authenticate_user!
	def index
		@sandwiches = Sandwich.all
		render :home
	end

	def show
		@sandwich = Sandwich.find(params[:id])
		@ingredients = Ingredient.all
		render :show
	end
end
