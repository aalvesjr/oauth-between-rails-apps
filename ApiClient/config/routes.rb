Rails.application.routes.draw do
  get 'pages/index'

  root to: 'pages#index'

  get '/oauth/callback', to: 'sessions#create'
end
