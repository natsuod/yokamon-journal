Rails.application.routes.draw do
  root 'top#index'
  resources :news, only: [:index, :show, :new]
  resources :events, only: [:index, :show, :new]
end
