Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :housings

  resources :renters

  resources :rents

  require "sidekiq/web"
  authenticate :user, ->(user) { user.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

end
