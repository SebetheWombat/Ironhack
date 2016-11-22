class SandwichViewsController < ApplicationController
	def index
		@sandwiches = Sandwich.all
		render :home
	end

	def show
		@sandwich = Sandwich.find(params[:id])
		@ingredients =Ingredient.all
	end
end
