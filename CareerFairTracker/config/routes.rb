Rails.application.routes.draw do
  get 'login/index'
  # get 'welcome/index'

  # resources :welcome
  ##### the above thing uses default methods like 'show' 'index(i tink idk)' 'create'
  ##### if you want to route by hand you have to keep the above commented out!
  match ':controller(/:action(/:id))', :via => :get 

  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
