Rails.application.routes.draw do
  root to: 'orders#index'

  resources :tasks
  resources :performers
  resources :services
  resources :service_categories
  resources :orders
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
