Rails.application.routes.draw do
  get 'likes/create'
  get 'likes/destroy'
  resources :users, :tweets
 
  root 'tweets#index'
  get 'tweets/new'
  get 'tweets/create'
  get 'tweets/destroy'
 
  get 'users/index'
  get 'users/index'
  get 'users/new'
  post 'users/create'
  delete 'users/:id', to: 'users#destroy'
  

  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
