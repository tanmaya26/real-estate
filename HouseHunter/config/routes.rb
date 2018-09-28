Rails.application.routes.draw do
  
  get 'home/index'
  resources :companies
  resources :roles
  resources :users
  resources :houses
  resources :house_realtors
  resources :company_house_mappings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
