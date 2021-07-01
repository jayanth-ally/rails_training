Rails.application.routes.draw do
  get 'gallery/index'
  get 'gallery/checkout'
  post 'gallery/checkout'
  get 'gallery/purchase_complete'
  post 'gallery/search'

  resources :orders
  resources :line_items
  resources :carts

  get 'admin/login'
  post 'admin/login'
  get 'admin/logout'
  resources :stores
  devise_for :users
  get 'home/index'
  root to: 'gallery#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
