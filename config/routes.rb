Rails.application.routes.draw do
  root 'top#index'
  resources :news, only: [:index, :show]
  resources :events, only: [:index, :show]
end
