Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/products' => 'products#index'
  get '/products/new' => 'products#new'
  post '/products' => 'products#create'
  get '/products/:id' => 'products#show'
  get '/products/:id/edit' => 'products#edit'
  patch 'products/:id' => 'products#update'
  delete '/products/:id' => 'products#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/company/signup' => 'companies#new'
  post '/company' => 'companies#create'
  get '/company/:id' => 'companies#show'
  get '/company/:id/edit' => 'companies#edit'
  patch 'company/:id' => 'companies#update'
  delete '/company/:id' => 'companies#destroy'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/orders' => 'orders#index'
  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'

  get '/carted_products' => 'carted_products#index'
  post '/carted_products' => 'carted_products#create'
  delete '/carted_products/:id' => 'carted_products#destroy'

end
