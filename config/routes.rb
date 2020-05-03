Rails.application.routes.draw do
  root 'items#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/subcategories/:id', to: "categories#show", as: :category
  resources :categories, only: [:index, :show]
  resources :items do
   get 'buypage', to: 'items#buypage'
   get 'list', to: 'items#list'
  end
  resources :users, only: :show do
    get 'logout', to: 'users#logout'
    get 'cash', to: 'users#cash'
    get 'address', to: 'users#address'
  end
  resources :cards, only: [:show, :new, :create, :destroy]
end
