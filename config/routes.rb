Rails.application.routes.draw do
  resources :order_stores
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: redirect('orders/index')
  get 'orders/index', to: 'orders#index', as: 'index'
  get 'orders/index2', to: 'orders#index2', as: 'index2'
end
