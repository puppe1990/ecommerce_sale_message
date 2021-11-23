Rails.application.routes.draw do
  resources :simplo_orders
  resources :order_stores
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: redirect('orders/index')
  get 'orders/index', to: 'orders#index', as: 'index'
  get 'orders/immediate_delivery', to: 'orders#immediate_delivery', as: 'immediate_delivery'
  get 'orders/motoboy', to: 'orders#motoboy', as: 'motoboy'
  get 'orders/index/:order_status', to: 'orders#filter_index', as: 'filter_index'
  get 'orders/discount_message', to: 'orders#discount_message', as: 'discount_message'
  get 'orders/discount_message/:order_status', to: 'orders#filter_discount_message', as: 'filter_discount_message'
  get 'orders/exchanges', to: 'orders#exchanges', as: 'exchanges'
end
