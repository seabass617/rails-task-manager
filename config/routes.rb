Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "tasks#index"
  
  
  
  
  # # CREATE ACTIONS
  # # 1. read the form - NEW
  # # only the GET routes have a view
  get 'tasks/new', to: 'tasks#new'
  # # 2. create the RESTAURANT - CREATE
  post 'tasks', to: 'tasks#create'
  
  
  # # READ ACTIONS
  # # 1. read many - INDEX
  # # only the GET routes have a view
  get 'tasks', to: 'tasks#index'
  # # 2. read one - SHOW
  # # only the GET routes have a view
  get 'tasks/:id', to: 'tasks#show', as: :task

   # # UPDATE ACTIONS
  # # 1. read the form - EDIT
  # # only the GET routes have a view
  get 'tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  # # 2. update the RESTAURANT - UPDATE
  patch 'tasks/:id', to: 'tasks#update'

   # # DELETE ACTION
  delete 'tasks/:id', to: 'tasks#destroy'

end
