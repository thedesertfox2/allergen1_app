# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Recipe.destroy_all
IngredientRecipe.destroy_all
Ingredient.destroy_all

carrot = Ingredient.create(name: "Carrot")
chocolate = Ingredient.create(name: "chocolate")
alex = User.create(name: "Alex", allergy: carrot.name)


carrot_cake = Recipe.create(name: "Carrot Cake", user_id: alex.id)

IngredientRecipe.create(recipe_id: carrot_cake.id, ingredient_id: carrot.id)


