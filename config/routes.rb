Rails.application.routes.draw do
  resources :genres
  resources :stakeholders
  resources :categories
  resources :videoworks
  resources :reviews
  devise_for :users
  get 'home/index'
  root to: 'home#index'
end
