Rails.application.routes.draw do
  root "top#index"

  get 'top/index'

  resources :wishes, only: [:create, :update, :destroy]
end
