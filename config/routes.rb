Rails.application.routes.draw do
  get 'index', to: 'tasks#index'
  post 'tasks', to: 'tasks#create'
  get 'tasks/new', to: 'tasks#new', as: :new_task
  get 'tasks/:id', to: 'tasks#show', as: :show
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update', as: :update_task
  delete 'tasks/:id', to: 'tasks#destroy', as: :destroy_task
end
