Rails.application.routes.draw do
  resources :users
  root 'users#index'
  get 'users/index'
  get 'users/new'
  post 'users/create'
  delete 'users/:id', to: 'users#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
