Rails.application.routes.draw do
  resources :products, only: %i[index show edit destroy new create update]
  resources :warehouses, only: %i[index show edit destroy new create update]
  resources :stocks, only: %i[index new show create]
  resources :orders, only: %i[index new show create] do
    resources :order_items, only: %i[create]
  end
  # /orders/:order_id/order_items/:id
end
