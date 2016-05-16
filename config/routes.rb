Rails.application.routes.draw do
  devise_for :users

  root to: 'drinkeries#index'

  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'
  post '/users', to: 'users#create'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'

  get '/user_drinks', to: 'user_drinks#index'
  get '/user_drinks/:id', to: 'user_drinks#show'
  post '/user_drinks', to: 'user_drinks#create'
  patch '/user_drinks/:id', to: 'user_drinks#update'
  delete '/user_drinks/:id', to: 'drinkeries#destroy'

  get '/drinkeries', to: 'drinkeries#index'
  get '/drinkeries/:id', to: 'drinkeries#show'
  post '/drinkeries', to: 'drinkeries#create'
  patch '/drinkeries/:id', to: 'drinkeries#update'
  delete '/drinkeries/:id', to: 'drinkeries#destroy'

  get '/images', to: 'images#index'
  get '/images/:id', to: 'images#show'
  post '/images', to: 'images#create'
  patch '/images/:id', to: 'images#update'
  delete '/images/:id', to: 'images#destroy'

  get '/happy_hours', to: 'happy_hours#index'
  get '/happy_hours/:id', to: 'happy_hours#show'
  post '/happy_hours', to: 'happy_hours#create'
  patch '/happy_hours/:id', to: 'happy_hours#update'
  delete '/happy_hours/:id', to: 'happy_hours#destroy'
end
