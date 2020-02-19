Rails.application.routes.draw do
  resources :products, only: %i[index show edit destroy new create update]
  resources :warehouses, only: %i[index show edit destroy new create update]
  resources :stocks, only: %i[index]
end
