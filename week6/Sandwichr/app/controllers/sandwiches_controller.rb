class SandwichesController < ApplicationController
	protect_from_forgery with: :null_session

	def index 
		sandwiches = Sandwich.all
		render json: sandwiches
	end

	def create
		sandwich = Sandwich.create(sandwich_params)
		render json: sandwich
	end

	def show
		a_sandwich = Sandwich.find(params[:id])
		many_ingredients = a_sandwich.ingredients
		render json: {sandwich: a_sandwich, ingredients: many_ingredients}
	end

	def update
		sandwich = Sandwich.find(params[:id])
		sandwich.update(sandwich_params)
		render json:sandwich
	end

	def destroy
		sandwich = Sandwich.find(params[:id])
		sandwich.destroy
		render json: sandwich
	end

	def add_ingredient
		the_sandwich = Sandwich.find(params[:id])
		ah_ingredient = Ingredient.find(params[:ingredient_id])
		#the_sandwich.ingredients.push(ah_ingredient)

		SandwichIngredient.create(sandwich_id: the_sandwich.id, ingredient_id: ah_ingredient.id)
		redirect_to "/sandwiches/#{params[:id]}"
	end

	private

	def sandwich_params
		params.require(:sandwich).permit(:name, :bread_type)
	end


end
