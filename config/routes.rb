Bidsystems::Application.routes.draw do
  devise_for :users

  devise_for :models

 # resources :products do 
  #	resources :bids
  #end
  resources :products
  root to: 'bids#index'
end
