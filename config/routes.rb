Rails.application.routes.draw do
  get '/id', to: 'users#show_id', as: 'id'
  get '/user/:id', to: 'users#show', as: 'user'
  post '/user', to: 'users#create', as: 'create_user'
end
