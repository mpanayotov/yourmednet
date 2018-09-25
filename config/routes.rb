Rails.application.routes.draw do
  namespace :v1 do
    get 'casefeed', to: 'casefeed#feed'
    resources :medcases, only: [:show, :create]
    resources :answers, only: [:create]
    resources :comments, only: [:create]
    resources :profiles, only: [:show, :create]
    post 'sessions', to: 'sessions#create_session'
    get 'sessions', to: 'sessions#session_profile'
    put 'sessions', to: 'sessions#update_profile'
  end
end
