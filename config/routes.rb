Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Current Version
  namespace :api do
      resources :recipes, only: [:index, :show]
      resources :ingredients, only: [:index]
      resources :tags, only: [:show], param: :slug
      resources :users
      post 'user_token' => 'user_token#create'
      post 'find_user' => 'user#find'
  end
end
