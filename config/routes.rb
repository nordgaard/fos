Rails.application.routes.draw do
  devise_for :admins
  devise_for :users, :controllers => { :registrations => "users/registrations" }

  root to: 'welcomes#index'

  get '/user_fav_locations', to: "user_drinks#user_fav_locations"
  get '/maps', to: "maps#index"
  get 'welcomes/resume', to: "welcomes#resume"
  resources :users
  resources :categorized_locations
  resources :categories
  resources :happy_hours
  resources :locations
  resources :user_drinks
  resources :images
  resources :welcomes

  namespace :api do
    namespace :v1 do
      resources :happy_hours
      resources :locations
      resources :user_drinks
    end
  end
end

