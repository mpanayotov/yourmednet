Rails.application.routes.draw do
  # devise_for :users
  namespace :v1 do
    resources :profiles, only: [:show]
    resources :sessions, only: [:create]
  end
end
