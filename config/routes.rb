Rails.application.routes.draw do
  devise_for :users

  root to: 'home#index'
  
  resources :contents, controller: 'home', only: [:index, :create]
end