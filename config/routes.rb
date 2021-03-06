Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # read all
  get 'tasks', to: 'tasks#index', as: :tasks

  # create one
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # read one - show must go after the "new" routes
  get 'tasks/:id', to: 'tasks#show', as: :task

  # edit one
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # delete one
  delete 'tasks/:id', to: 'tasks#destroy'
end
