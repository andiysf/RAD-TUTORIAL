Rails.application.routes.draw do
  get 'sessions/new'

  resources :users
  get 'users/new'

  #get 'static_pages/home'
  root 'static_pages#home'
  #get 'static_pages/help'
  get '/help', to: 'static_pages#help'
  #get 'static_pages/about'
  get '/about', to: 'static_pages#about'
  #get 'static_pages/contact'
  get '/contact', to: 'static_pages#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/post', to: 'microposts#new'
  resources :microposts
  resources :users
end
