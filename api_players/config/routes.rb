  Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/api_players' => 'players#index'
  get 'players/new' => 'players#new' 
  post '/api_players' => 'players#create'
  get '/api_players/:id' => 'players#show'
  get '/api_players/:id/edit' => 'players#edit'
  patch '/api_players/:id' => 'players#update'
  delete '/api_players/:id' => 'players#destroy'

end
