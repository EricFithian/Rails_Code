Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/recipes' => 'recipes#index'
  get '/recipes/new' => 'recipes#new'
  post 'recipes' => 'recipes#create'
  get '/recipes/:id' => 'recipes#show'
  get '/recipes/:id/edit' => 'recipes#edit'
  patch 'recipes/:id' => 'recipes#update'
  delete '/recipes/:id' => 'recipes#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'

end
