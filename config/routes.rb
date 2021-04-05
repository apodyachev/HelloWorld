Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/api/users/create', to: 'users#create'
  get '/api/users/', to: 'users#index'
  get '/api/users/:id', to: 'users#show'
  post '/api/session/login', to: 'sessions#create'
  delete '/api/session/logout', to: 'sessions#destroy'
end
