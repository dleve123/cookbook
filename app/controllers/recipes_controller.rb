class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to recipes_path
    else
      flash.now[:error] = displayed_errors(@recipe)
      render :new
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name)
  end

  def displayed_errors(record)
    record.errors.full_messages.to_sentence
  end
end
