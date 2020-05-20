class Ingredient < ApplicationRecord
    has_many :ingredient_recipes
    has_many :recipes, through: :ingredient_recipes
    has_many :users, through: :recipes
    has_many :allergies
    
    
    

     
end
