Rails.application.routes.draw do

  root 'home#index'

  resources :home
  resources :students
  resources :logins

  # match ':controller(/:action(/:id))', :via => :get 
  # match ':controller(/:action(/:id))', :via => :post

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
