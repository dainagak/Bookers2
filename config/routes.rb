Rails.application.routes.draw do
  devise_for :users
  resources :homes, only: [:show]
  root to: 'homes#top'
  resources :users, only: [:new, :create, :index, :show, :destroy]
  resources :books, only: [:new, :create, :index, :show, :destroy]
end
