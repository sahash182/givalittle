Rails.application.routes.draw do

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'payment/index'

  post 'payment/pay'

  root "sites#index"

  resources :users, except: [:new, :show, :index]
  get '/signup', to: 'users#new'
  get '/users/:id', to: 'users#show', as: 'profile'

  resources :sessions, only: [:create]
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'

  # custom routes
  get '/about', to: 'sites#about'

  resources :creditcards

  resources :charities

end
