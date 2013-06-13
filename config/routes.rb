Bidsystems::Application.routes.draw do
  resources:Bidsystems
  root to: 'bids#index'
end
