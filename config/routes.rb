Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  resources :topics, only: [:index, :show, :new, :create, :destroy, :edit, :update]
  resources :events, only: [:index, :show, :new, :create, :destroy, :edit, :update]
  resources :abouts, only: [:index]
  resources :contacts, only: [:index]
end
