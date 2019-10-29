Rails.application.routes.draw do

  root 'home#index'
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  match '/users/new', to: 'dashboards#index', as: 'dashboard', via: :post
  match '/dashboards' => 'dashboards#index', via: :post
  match '/logins' => 'logins#index', via: :get
  match '/logins' => 'logins#index', via: :post
  
  # post '/dashboards/:username/display' => 'dashboards#index'

  resources :home
  resources :students
  # resources :logins
  resources :dashboards

  # match ':controller(/:action(/:id))', :via => :get 
  # match ':controller(/:action(/:id))', :via => :post

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
