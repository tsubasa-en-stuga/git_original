Rails.application.routes.draw do
  get 'parents/show'

  devise_for :users
  root 'tweets#index'
  resources :tweets do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
  resources :parents,only: [:show]
end