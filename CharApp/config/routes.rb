CharApp::Application.routes.draw do

  root to: 'sessions#new'

  resource :session, only: [:new, :create, :destroy]

  get '/activate_users', to: 'users#activate'
  resources :users, only: [:new, :create, :show] {
    resources :characters, only: [:new, :create, :show]
  }



end
