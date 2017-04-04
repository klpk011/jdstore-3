Rails.application.routes.draw do
  devise_for :users
root 'products#index'

resources :products do
  member do
    post :add_to_cart
  end
end
namespace :admin do
  resources :products
end
end
