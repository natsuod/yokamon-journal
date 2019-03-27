Rails.application.routes.draw do
  root 'top#index'
  resources :news, only: [:index, :show]
end
