CharApp::Application.routes.draw do

  root to: 'sessions#new'

  resources :users, only: [:new, :create, :show]

  get '/activate', to: 'users#activate'

  resource :session, only: [:new, :create, :destroy]
end
