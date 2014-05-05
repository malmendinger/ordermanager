Rails.application.routes.draw do
  resources :orders do
  	resources :order_items
  end

  resources :customers

  resources :distributors

  resources :order_status, only: [:index, :show]

  root to: 'orders#index'
end
