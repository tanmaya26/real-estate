Rails.application.routes.draw do
  resources :company_house_mappings
  get 'home/index'
  resources :companies
  resources :roles
  resources :users
  resources :houses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end