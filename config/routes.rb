Rails.application.routes.draw do
  namespace :v1 do
    get 'comments_controller/create'
  end
  namespace :v1 do
    get 'medcase_controller/show'
    get 'medcase_controller/create'
  end
  # devise_for :users
  namespace :v1 do
    resources :profiles, only: [:show]
    resources :sessions, only: [:create]
  end
end
