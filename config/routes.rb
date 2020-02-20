Rails.application.routes.draw do
  root 'home#index'
  resources :users
  resources :articles
end
