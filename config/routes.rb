Rails.application.routes.draw do

  resources :places
  root 'home#index'
  devise_for :users
  resources :location, only: [:index] do
    member do
     post :add
     post :share
     get  :get_form
     delete :remove
    end
  end

end
