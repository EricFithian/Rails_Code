Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/products' => 'products#index'


  get '/signup' => 'users#new'
  post '/users' => 'users#create'

end
