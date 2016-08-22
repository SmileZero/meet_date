Rails.application.routes.draw do
  root "top#index"

  get 'top/index'

  resources :wishes, only: [:new, :create, :edit, :update, :destroy]
end
