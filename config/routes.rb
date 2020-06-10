Rails.application.routes.draw do
  resources :places
  root 'home#index'
  devise_for :users
  # resources :share_location
end
