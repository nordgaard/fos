Rails.application.routes.draw do
  devise_for :users

  root to: 'locations#index'

  resources :users
  resources :categorized_locations
  resources :categories
  resources :happy_hours
  resources :locations
  resources :user_drinks
  resources :images

end
