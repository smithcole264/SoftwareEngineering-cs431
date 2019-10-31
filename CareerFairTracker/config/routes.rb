Rails.application.routes.draw do

  resources :recruiters
  root 'home#index'
  post 'users', to: 'users#create', as: 'user'
 
  post 'signup', to: 'users#create', as: 'signup'
  get 'signup', to: 'users#new'
  
  get 'dashboard', to: 'dashboards#index', as: 'dashboard'

  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
 
  # post '/users' => 'users#create'
  # match '/users', to: 'users#create', as: 'dashboard', via: :post
  # match '/dashboards' => 'dashboards#index', via: :post
  match '/logins' => 'logins#index', via: :get
  match '/logins' => 'logins#index', via: :post
  
  # post '/dashboards/:username/display' => 'dashboards#index'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :home
  resources :students
  # resources :logins
  resources :dashboards
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
