Rails.application.routes.draw do
  resources :products
  resources :bids
  resources :companies
  get 'users/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
end
