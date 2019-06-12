class Api::RecipesController < ApplicationController
  before_action :authenticate_user

  def index
    @recipes = Recipe.all
    render json: @recipes, status: 200
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @ingredients = recipe_params["ingredients_attributes"]
    @tags = recipe_params["tags_attributes"]
    @ingredients.each do |ingredient|
      @recipe.ingredients.build(ingredient)
    end

    @tags.each do |tag|
      @recipe.tags.build(tag)
    end

    if @recipe.save
      render json: @recipe, status: 200
    else
      render json: @recipe.errors, status: :unprocessable_entry
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    render json: @recipe, status: 200
  end

  private

  def recipe_params
    params.require(:recipe).permit(
      :name,
      :description,
      ingredients_attributes: [:id, :description],
      tags_attributes: [:id, :tag_name, :slug])
  end
end
