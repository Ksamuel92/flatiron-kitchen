class RecipesController < ApplicationController
  def index
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build
  end

  def create
    # byebug
    @recipe = Recipe.new(recipe_params)
      if @recipe.save
        redirect_to recipe_path(@recipe)
      else
        render 'new'
      end
  end

  def show
    @recipe = Recipe.find_by(params[:id])
  end

  def edit
    @recipe = Recipe.find_by(params[:id])
  end

  def update
    @recipe = Recipe.find_by(params[:id])
    @recipe.update(recipe_params)
    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render 'edit'
    end

  end

private

def recipe_params
  params.require(:recipe).permit(:name, ingredient_ids: [])
end

end