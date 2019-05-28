class ApplicationController < ActionController::API
  include Knock::Authenticable

  private

  def logged_in?
    !!curent_user
  end 
end
