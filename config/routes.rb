Rails.application.routes.draw do

  get 'orders/create'

  devise_for :users
  resources :products do
  	resources :orders,only: [:create]
  end
  root 'dashboard#index'
  get 'dashboard/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
