Rails.application.routes.draw do
  resources :products
  resources :customers

  get 'welcome/index'

  root 'welcome#index'
end
