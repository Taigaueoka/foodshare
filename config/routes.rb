Rails.application.routes.draw do
  get 'topics/index'
  get 'topics/show/:id' => 'topics#show', as: :topics_show
  delete 'topics/delete/:id' => 'topics#delete', as: :topic_delete
  post 'topics/create' => 'topics#create'
  post 'posts/create' => 'post#create', as: :post_create
  get 'posts/index'
  get 'posts/show'
  get 'users/index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  namespace :admin do
    resources :users
  end

  root to: 'tasks#index'
  resources :tasks do
    post :confirm, action: :confirm_new, on: :new
  end
  
  root to: 'profiles#index'
  resources :profiles do
    post :confirm, action: :confirm_new, on: :new
    
  end
end
