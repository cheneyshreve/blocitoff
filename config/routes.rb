Rails.application.routes.draw do

  get 'users/show'
  get 'users_controller/show'

  devise_for :users
  resources :users

  resources :items, only: [:create, :destroy]


  get 'welcome/index'
  get 'welcome/about'

  root 'users#show'
end
