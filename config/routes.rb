Rails.application.routes.draw do
	
  root "sites#index"

  get '/login',     :to => 'sessions#login'
  post '/sessions', :to => 'sessions#create'
  get '/logout',    :to => 'sessions#logout'
  get '/signup',		:to => 'users#new'

  resources :users

  resources :creditcards

  resources :charities

end
