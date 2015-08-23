Rails.application.routes.draw do

  devise_for :views
  devise_for :users


  get 'payment/index'

  post 'payment/pay'

  root "sites#index"


end
