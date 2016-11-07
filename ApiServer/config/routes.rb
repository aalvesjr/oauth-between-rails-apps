Rails.application.routes.draw do
  use_doorkeeper
  root to: 'pages#index'

  get 'pages/index'

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create]
  delete '/logout', to: 'sessions#destroy', as: :logout
end
