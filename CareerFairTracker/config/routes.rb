Rails.application.routes.draw do

  root 'home#index'

  match '/dashboards' => 'dashboards#index', via: :post
  # post '/dashboards/:username/display' => 'dashboards#index'

  resources :home
  resources :students
  resources :logins

  

  resources :dashboards

  # match ':controller(/:action(/:id))', :via => :get 
  # match ':controller(/:action(/:id))', :via => :post

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
