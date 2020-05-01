Rails.application.routes.draw do
  
  root 'items#top'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top', to: 'items#top'
  resources :items do
   get 'buypage', to: 'items#buypage'
  end
  resources :users, only: :show do
    get 'logout', to: 'users#logout'
    get 'cash', to: 'users#cash'
    get 'address', to: 'users#address'
  end
  resources :cards, only: [:show, :new, :create, :destroy]
end
