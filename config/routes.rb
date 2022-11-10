Rails.application.routes.draw do
  resources :users
  root to: 'pages#home'
  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
