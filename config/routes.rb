Rails.application.routes.draw do
  namespace :v1 do
    resources :medcases, only: [:show, :create]
    resources :answers, only: [:create]
    resources :comments, only: [:create]
    resources :profiles, only: [:show]
    resources :sessions, only: [:create]
  end
end
