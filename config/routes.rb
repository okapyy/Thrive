Rails.application.routes.draw do
  
  root 'items#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :items
  get 'buypage', to: 'items#buypage'
  resources :users, only: :show
  get 'logout', to: 'users#logout'
  get 'cash', to: 'users#cash'
  get 'card', to: 'users#card'
  get 'address', to: 'users#address'
end
