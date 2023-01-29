Rails.application.routes.draw do
  #get 'follow/index'
  #get 'user/index'
  #get 'user/show'
  #get 'user/new'
  #get 'user/create'
  #get 'user/edit'
  #get 'user/update'
  #get 'user/destroy'
  root 'users#index'
  resources :users do
    resources :follows
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
