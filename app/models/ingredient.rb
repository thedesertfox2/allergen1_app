class Ingredient < ApplicationRecord
    has_many :ingredient_recipes
    has_many :recipes, through: :ingredient_recipes
    has_many :users, through: :recipes
    has_many :allergies
    def sort 
      ing = self.allergies.count 
      ing.order("self.allergies.count")
    end  

    

     
end
