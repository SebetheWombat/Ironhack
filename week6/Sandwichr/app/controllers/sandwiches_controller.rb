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
		#alternatively---> render json: a_sandwich.to_json(include: [:ingredients])
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

		tots_calories = the_sandwich.total_calories
		more_calories = ah_ingredient.calories
		tots_calories += more_calories
		the_sandwich.update(total_calories: tots_calories)

		SandwichIngredient.create(sandwich_id: the_sandwich.id, ingredient_id: ah_ingredient.id)
		#alternatively------> the_sandwich.ingredients.push(ah_ingredient)

		# render json: the_sandwich.to_json(include: [:ingredients])
		render json: ah_ingredient
	end

	private

	def sandwich_params
		#white list of permited params (security reasons)
		params.require(:sandwich).permit(:name, :bread_type, :total_calories)
	end

end
