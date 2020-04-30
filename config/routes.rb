Rails.application.routes.draw do
  root 'items#index'
  devise_for :users
  
  resources :items
  get '/subcategories/:id', to: "categories#show", as: :category
  resources :categories, only: [:index, :show]

end
