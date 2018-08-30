Rails.application.routes.draw do
  namespace :v1 do
    get 'casefeed', to: 'casefeed#feed'
    post 'casefeed', to: 'casefeed#create'
    resources :medcases, only: [:show, :create]
    resources :answers, only: [:create]
    resources :comments, only: [:create]
    get 'profiles', to: 'profiles#show'
    post 'profiles', to: 'profiles#create'
    resources :sessions, only: [:create]
  end
end
