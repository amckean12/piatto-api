class Api::TagsController < ApplicationController
  def index
    @tags = Tag.all
    render json: @tags, status: 200
  end

  def show
    @tag = Tag.find_by(slug: params[:slug])
    render json: @tag, status: 200
  end

end
