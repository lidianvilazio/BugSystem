Rails.application.routes.draw do
  resources :customer_services
  resources :tasks
  get "bug/:id", to: "bugs#show", as: "bug"
  post "bug/:id", to: "bugs#show", as: "bug/solve"
  patch 'bug/:id', to: 'bugs#update', as: 'bug/solved'
  resources :bugs, to: [:index, :create, :new]
  resources :employees
  get "profile/:id", to: "customers#show", as: "customer"
  post "profile/:id", to: "customers#show", as: "customer/bug"
  get "signup", to: "customers#new", as: "signup"
  get 'login', to: "sessions#new", as: "login"
  post 'logout', to: 'sessions#destroy', as: 'logout'
  post 'sessions', to: 'sessions#create', as: 'sessions'
  resources :customers, only: [:index, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
