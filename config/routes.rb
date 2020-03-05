Rails.application.routes.draw do
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'favoriteview', to: 'favoriteview#index'
  
  
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create, :favorites] do
    member do
      get :followings
      get :followers
      get :favorites
      get :favoritesview
      
    end
  end
  
   resources :microposts do
    post 'add' => 'favorites#create'
    delete '/add' => 'favorites#destroy'
  end
  
  
  
  
  
  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
end