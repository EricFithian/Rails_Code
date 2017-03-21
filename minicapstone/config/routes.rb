Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/recipes' => 'recipes#index'

  get '/signup' => 'users#new'
  post '/recipes' => 'users#create'

end
