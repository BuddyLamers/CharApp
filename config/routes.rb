CharApp::Application.routes.draw do

  root to: 'sessions#new'

  resource :session, only: [:new, :create, :destroy]
  get '/activate_users', to: 'users#activate'

  resources :users, only: [:new, :create, :show, :index]

  resources :characters, only: [:new, :create, :destroy, :edit, :update, :show] do
    resources :comments, only: [:create, :destroy]
    resources :forks, only: [:create]
    resources :stars, only: [:create]
  end

  resources :comments, only: [:destroy]
  #un-nest comment destroy in rest of code

  resources :messages, only: [:new, :create, :show]
  get '/inbox', to: 'messages#inbox'
  get '/sentbox', to: 'messages#sentbox'

  resources :notifications, only: [:index, :show]

  namespace :api, :defaults => { :format => :json } do
    resources :characters, only: [:index, :new, :create, :destroy, :edit, :update, :show] do
      resources :comments, only: [:create]
      resources :forks, only: [:create]
      resources :stars, only: [:create]
    end
    resources :comments, only: [:destroy]
    #should probably be able to destroy forks and stars?
  end

end
