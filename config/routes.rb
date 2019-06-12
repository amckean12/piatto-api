Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Current Version
  namespace :api do
    resources :recipes, only: [:index, :show, :create]
    resources :ingredients, only: [:index, :create]
    resources :tags, only: [:show, :create], param: :slug
    resources :users
    post 'user_token' => 'user_token#create'
    post 'find_user' => 'users#find'
  end
end
