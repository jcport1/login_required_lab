Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #we only need two routes for our secrets controllers- new & show *we're only getting, not posting 
  #no view to display or action to call? 

  get '/secrets/new' 

  #default page
  root 'application#hello'

  #we need three routes for our sessions controller 

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/login' => 'sessions#destroy'

  #order matters? 
  get '/secret' => 'secrets#show'
end
