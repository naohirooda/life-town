Rails.application.routes.draw do
  devise_for :users

  root "messages#index"
  resources :users, only: [:edit, :update]
  resources :spots, only: [:index, :new, :create, :destroy, :edit, :update] 
  resources :comment, only: [:index, :create]
  resources :good, only: [:index, :create]
  
end
