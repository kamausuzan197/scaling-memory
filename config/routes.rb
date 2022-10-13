Rails.application.routes.draw do
  resources :users, only: [:show,:create]
  resources :reviews, only: [:show, :create, :update, :destroy]
  resources :laundries, only: [:index, :show, :create]
 
end
