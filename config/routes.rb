Rails.application.routes.draw do
  get 'pictures/new'

  get 'parents/show'

  devise_for :users
  root 'tweets#index'
  resources :tweets do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
  resources :parents, only: [:show]
  resources "parents", :path => 'parents/:id'
  resources :parents, only: [:create]

end