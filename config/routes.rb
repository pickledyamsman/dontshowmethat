Rails.application.routes.draw do
  resources :movies
  namespace :admin do
    resources :users
    resources :movies
    root to: "users#index"
  end
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
