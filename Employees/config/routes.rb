Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/employees' => 'employees#index'
  get '/employees/:id' => 'employees#show'


end
