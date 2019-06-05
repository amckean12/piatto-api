class Api::RecipesController < ApplicationController
  #before_action :authenticate_user

  def index
    @recipes = Recipe.all
    render json: @recipes, status: 200
  end

  def create
    @recipe = Recipe.create(recipe_params)
    redner json: @recipe, status: 200
  end

  def show
    @recipe = Recipe.find(params[:id])
    render json: @recipe, status: 200
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :description, ingredients_attributes: [:id, :description], tags_attributes: [:id, :tag_name])
  end
end
