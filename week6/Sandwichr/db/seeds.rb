# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ingredientA = Ingredient.create!(name: "Garlic Humus", calories: 100)
ingredientB = Ingredient.create!(name: "Peppers", calories: 50)
ingredientC = Ingredient.create!(name: "Cucumbers", calories: 40)
ingredientD = Ingredient.create!(name: "Bacon", calories: 150)
ingredientE = Ingredient.create!(name: "Chedder Cheese", calories: 100)

sandwich_cals = ingredientA.calories + ingredientC.calories + ingredientB.calories

sandwichA = Sandwich.create!(name: "Humus Veggie", bread_type: "Herb Wrap", total_calories: sandwich_cals)
sandwichB = Sandwich.create!(name: "Bacon Chedder", bread_type: "Honey wheat", total_calories: 250)

#Choose one of following three ways to add rows to join table
SandwichIngredient.create!(sandwich_id: sandwichA.id, ingredient_id: ingredientA.id)
SandwichIngredient.create!(sandwich: sandwichA, ingredient: ingredientB)
sandwichA.ingredients.push(ingredientC)

sandwichB.ingredients.push(ingredientD)
sandwichB.ingredients.push(ingredientE)

ike = User.create!(name: "Ike", email: "TheYaleMan@dude.com", password: "IAmIke", password_confirmation: "IAmIke")
sebs = User.create!(name: "Sebe", email: "MajesticWombat@gamil.com", password: "TheMightyWombat", password_confirmation: "TheMightyWombat")