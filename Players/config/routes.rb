Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/players' => 'players#index'
      post 'players' => 'players#create'
      get '/players/:id' => 'players#show'
      patch '/players/:id' => 'players#update'
      delete '/players' => 'players#destroy'
    end
  end

  

end
