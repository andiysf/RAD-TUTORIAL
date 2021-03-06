Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'
  resources :account_activations, only: [:edit]
  resources :users
  resources :password_resets, only: [:new, :create, :edit, :update]
  get 'users/new'

  #get 'static_pages/home'
  root 'static_pages#home'
  #get 'static_pages/help'
  get '/help', to: 'static_pages#help'
  #get 'static_pages/about'
  get '/about', to: 'static_pages#about'
  #get 'static_pages/contact'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
