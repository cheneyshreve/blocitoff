Rails.application.routes.draw do
  devise_for :installs
  devise_for :users
  get 'welcome/index'

  get 'welcome/about'

  root 'welcome#index'
end
