Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tasks#home'

  get "tasks", to: "tasks#index", as: :tasks

  get "tasks/:id", to: "tasks#show", as: :task

  get "new", to: "tasks#new"

  post "tasks", to: "tasks#create", as: :create

  get "tasks/:id/edit", to: "tasks#edit", as: :edit

  patch "tasks/:id", to: "tasks#update"
end
