Rails.application.routes.draw do
  get 'payment/index'

  post 'payment/pay'

  root "sites#index"

  resources :users

  resources :creditcards

  resources :charities

end
