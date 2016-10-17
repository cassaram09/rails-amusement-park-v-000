Rails.application.routes.draw do

  resources :users
  resources :attractions

  post '/signin', to: 'sessions#create', as: 'post_signin'

  get '/signin', to: 'sessions#new', as: 'get_signin'

  delete '/logout', to: 'sessions#destroy', as: 'logout'

  get '/signup', to: 'users#new', as: 'signup'
  
  post '/ride', to: 'rides#ride', as: 'ride'

  root 'welcome#index'
  
end