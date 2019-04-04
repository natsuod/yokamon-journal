Rails.application.routes.draw do
  root 'top#index'
  resources :news, only: [:index, :show, :new]
  resources :events, only: [:index, :show, :new]
  resources :abouts, only: [:index]
  resources :contacts, only: [:index]
end
