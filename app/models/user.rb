class User < ApplicationRecord
    has_many :recipes
    has_many :ingredient_recipes, through: :recipes
    has_many :ingredients, through: :ingredient_recipes
    has_many :allergies
    validates :name, presence: true, uniqueness: {case_sensitive: false}
    
end
