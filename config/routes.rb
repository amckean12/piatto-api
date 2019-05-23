Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Current Version
  namespace :api do
      resources :recipes, only: [:index, :show]
      resources :ingredients, only: [:index]
  end
end
