Rails.application.routes.draw do
 get :signup, to: 'users#new'
 resources :users do
  member do
    get :following, :followers
  end
end
 resources :dishes

 root 'static_pages#home'
 get :about,        to: 'static_pages#about'
 get :use_of_terms, to: 'static_pages#terms'

 get :login, to: 'sessions#new'
 post :login, to: 'sessions#create'
 delete :logout, to: 'sessions#destroy'

 resources :relationships, only: [:create, :destroy]
end
