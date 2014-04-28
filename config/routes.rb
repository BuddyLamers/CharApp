CharApp::Application.routes.draw do

  root to: 'sessions#new'

  resource :session, only: [:new, :create, :destroy]

  get '/activate_users', to: 'users#activate'
  resources :users, only: [:new, :create, :show, :index] {
    resources :characters, only: [:new, :create, :destroy, :edit, :update, :show]{
      resources :comments, only: [:create, :destroy]
      resources :forks, only: [:create]
      resources :stars, only: [:create]
    }

  }

  resources :messages, only: [:new, :create]
  get '/inbox', to: 'messages#inbox'
  get '/sentbox', to: 'messages#sentbox'



end
