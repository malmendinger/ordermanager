Rails.application.routes.draw do
  resources :customers

  resources :distributors

  resources :order_status, only: [:index, :show]

end
