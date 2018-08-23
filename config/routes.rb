Rails.application.routes.draw do
  namespace :v1 do
    get 'casefeed', to: 'casefeed#feed'
    resources :medcases, only: [:show, :create]
    resources :answers, only: [:create]
    resources :comments, only: [:create]
    get 'profiles', to: 'profiles#show'
    resources :sessions, only: [:create]
  end
end
