Rails.application.routes.draw do
  root "sites#index"

  resources :users

  resources :creditcards

  resources :charities

end
