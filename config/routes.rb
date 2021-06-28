Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :housings do
    resources :contracts, only: [:index]
  end

  resources :renters

  resources :rents

  resources :expenses

  resources :dashboard, only: [:index]


  require "sidekiq/web"
  authenticate :user, ->(user) { user.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

end
