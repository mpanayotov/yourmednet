Rails.application.routes.draw do
  namespace :v1 do
    get 'casefeed', to: 'casefeed#feed'
    post 'casefeed', to: 'casefeed#create'
    resources :medcases, only: [:show, :create]
    resources :answers, only: [:create]
    resources :comments, only: [:create]
    resources :profiles, only: [:show, :create]
    post 'sessions', to: 'sessions#create'
    get 'session_profile', to: 'sessions#session_profile'
  end
end
