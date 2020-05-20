class RecipesController < ApplicationController

  before_action :find_recipe, only: [:show, :destroy, :edit]
  def index
    @recipes = Recipe.all 
  end

  def show
    
  end

  def new
    @recipe = Recipe.new
  end

  def create
    ingredient = Ingredient.find(params[:recipe][:ingredient_recipes][:ingredient_id])
    @recipe = Recipe.create(recipe_params)
    @recipe.ingredients << ingredient
    redirect_to recipe_path(@recipe)
  end

  def edit
  end

  def update
    recipe_update
  end


  def destroy
    @recipe.destroy
    redirect_to recipes_path
  end

  private
  def find_recipe
    @recipe = Recipe.find(params[:id])
  end
  def recipe_params
    params.require(:recipe).permit(:name, :user_id)
  end 

  def recipe_update
    ingredient = Ingredient.find(params[:recipe][:ingredient_recipes][:ingredient_id])
    @recipe = Recipe.find_or_create_by(recipe_params)
    @recipe.ingredients << ingredient
    redirect_to recipe_path(@recipe)
  end
end
