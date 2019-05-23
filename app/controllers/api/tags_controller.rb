class Api::TagsController < ApplicationController
  def index
    @tags = Tag.all
    render json: @tags, status: 200
  end

  def show
    @tag = Tag.find_by_slug(params[:id])
    binding.pry
    render json: @tag, status: 200
  end

end
