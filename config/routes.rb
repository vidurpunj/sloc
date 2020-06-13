Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  resources :location, only: [:index] do
    member do
     post :add
     post :share
     get  :get_form
     delete :remove
     delete :remove_shared
    end
  end
  get 'my_locations/:id', to: 'users#my_locations', as: 'my_locations'
  get 'shared_locations/:id', to: 'users#shared_locations', as: 'shared_locations'
end
