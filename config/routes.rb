Rails.application.routes.draw do
  devise_for :users

  resources :products do
  	collection { post :import }
  end

  resources :customers do
  	collection { post :import }
  end

  get 'welcome/index'

  root 'welcome#index'
end
