Rails.application.routes.draw do

  devise_for :users
  root 'parents#index'
  resources :tweets do
    resources :comments, only: [:create]
    resources :likes, only: [:create, :destroy]
  end
  resources :users, only: [:show]
  resources :parents, only: [:show]
  resources "parents", path:'parents/:id'
  resources :parents, only: [:create]

end