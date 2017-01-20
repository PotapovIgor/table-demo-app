Rails.application.routes.draw do
  devise_for :users
  resources :products
  resources :customers

  get 'welcome/index'

  root 'welcome#index'
end
