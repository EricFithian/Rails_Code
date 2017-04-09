Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/players' => 'players#index'
  post 'players' => 'players#create'
  get '/players/:id' => 'players#show'
  patch '/players/:id' => 'players#update'
  delete '/players' => 'players#destroy'

end
