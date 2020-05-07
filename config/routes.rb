Rails.application.routes.draw do
  get 'purchases/create'
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
    get 'top', to: 'items#top'  
    get 'buypage', to: 'items#buypage'
    get 'list', to: 'items#list'
    patch 'buy', to: 'items#buy'
  end
  
  resources :items do
    collection do
      get 'search'
    end
  end
  
  resources :users, only: :show do
    get 'logout', to: 'users#logout'
    get 'cash', to: 'users#cash'
    get 'address', to: 'users#address'
    get 'nowonsale', to: 'users#nowonsale'
    get 'completed', to: 'users#completed'
    get 'purchasehistory', to: 'users#purchasehistory'
  end
  resources :cards, only: [:show, :new, :create, :destroy]

  # resources :purchases, only: :create do
  #   # get 'buypage', to: 'purchases#buypage'
  # end
end
