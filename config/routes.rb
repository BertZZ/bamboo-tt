Rails.application.routes.draw do
  resources :users do
    resources :wallets, only: :show
  end
  root to: 'pages#home'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end
