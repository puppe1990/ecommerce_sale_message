Rails.application.routes.draw do
  resources :simplo_orders
  resources :order_stores
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: redirect('orders/index')
  get 'orders/index', to: 'orders#index', as: 'index'
  get 'orders/discount_message', to: 'orders#discount_message', as: 'discount_message'
  get 'orders/exchanges', to: 'orders#exchanges', as: 'exchanges'
end
