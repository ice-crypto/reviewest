Rails.application.routes.draw do
  get 'comment/create'
  get 'comment/update'
  get 'comment/destroy'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :comments
  resources :genres
  resources :stakeholders
  resources :categories
  resources :videoworks do
    collection do
      get :select
    end
  end
  resources :reviews
  devise_for :users
  get 'help/index'
  get 'home/index'
  root to: 'home#index'
end
