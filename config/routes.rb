Rails.application.routes.draw do
  resources :bug_tasks
  resources :bugs
  resources :employee_tasks
  resources :tasks
  resources :managers
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
