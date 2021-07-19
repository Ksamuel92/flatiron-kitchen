Rails.application.routes.draw do
  # get 'recipes/index'

  # get 'recipes/show'

  # get 'recipes/new'
  resources :recipes
  resources :ingredients

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
