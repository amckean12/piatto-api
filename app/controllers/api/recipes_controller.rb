class Api::RecipesController < ApplicationController
  before_action :authenticate_user, only: [:auth]
  def index
    @recipes = Recipe.all
    render json: @recipes, status: 200
  end

  def show
    @recipe = Recipe.find(params[:id])
    render json: @recipe, status: 200
  end

  def auth
    render json: {status: 200, msg: "You are currently logged in as #{current_user.email}"}
  end
end
