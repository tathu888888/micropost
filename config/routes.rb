Rails.application.routes.draw do
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create] do
    member do
      get :followings
      get :followers
      
    end
  end
  
   resources :microposts do
    post 'add' => 'favorites#create'
    delete '/add' => 'favorites#destroy'
  end
  
  
  
  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
end