Rails.application.routes.draw do
  root 'top#index'
  resourses :news, only: [:index]
end
