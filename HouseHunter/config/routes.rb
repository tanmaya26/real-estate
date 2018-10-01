Rails.application.routes.draw do



  resources :house_interest_lists
  resources :inquiry_replies
  resources :user_company_mappings
  resources :inquiries
  # get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :companies

  resources :users
  resources :houses

  #resources :sessions

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'
end

