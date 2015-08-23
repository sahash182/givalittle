Rails.application.routes.draw do

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'payment/index'

  post 'payment/pay'

  root "sites#index"

# <<<<<<< HEAD
#   get '/login',     :to => 'sessions#login'
#   post '/sessions', :to => 'sessions#create'
#   get '/logout',    :to => 'sessions#logout'
#   get '/signup',		:to => 'users#new'

#   resources :users
# =======
  resources :users, except: [:new, :show, :index]
  get '/signup', to: 'users#new'
  get '/users/:id', to: 'users#show', as: 'profile'

  resources :sessions, only: [:create]
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
# >>>>>>> ccd88f5521a25ab82b041c1273adeddd8a57eb8c

  resources :creditcards

  resources :charities

end
