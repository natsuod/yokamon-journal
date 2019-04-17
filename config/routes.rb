Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  resources :topics, only: [:index, :show, :new, :create]
  resources :events, only: [:index, :show, :new, :create]
  resources :abouts, only: [:index]
  resources :contacts, only: [:index]
end
