Rails.application.routes.draw do
  root 'items#index'

  devise_for :users, controllers: {
    registrations: 'wizard/registrations'
  }
  devise_scope :user do
    get 'addresses', to: 'wizard/registrations#new_address'
    post 'addresses', to: 'wizard/registrations#create_address'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :categories, only: [:index, :show]
  resources :items do
    get 'buypage', to: 'items#buypage'
    get 'list', to: 'items#list'
    patch 'buy', to: 'items#buy'
    resources :favorites, only: [:create, :destroy]
  end

  get 'top', to: 'items#top'  
  resources :users, only: :show do
    get 'logout', to: 'users#logout'
    get 'cash', to: 'users#cash'
    get 'address', to: 'users#address'
    get 'nowonsale', to: 'users#nowonsale'
    get 'completed', to: 'users#completed'
    get 'purchasehistory', to: 'users#purchasehistory'
    get 'favoritelist', to: 'users#favoritelist'
  end
  resources :item_images
  resources :cards, only: [:show, :new, :create, :destroy]

end
