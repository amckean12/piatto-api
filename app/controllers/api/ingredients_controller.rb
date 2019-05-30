class Api::IngredientsController < ApplicationController
  before_action :authenticate_user
  
  def index
    @ingredients = Ingredient.all
    render json: @ingredients, status: 200
  end
end
