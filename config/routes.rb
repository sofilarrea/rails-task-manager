Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # Create
  get 'taks', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
end
