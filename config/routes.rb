Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :housings do
    resources :contracts
  end

  resources :housings do
    resources :documents, only: [:new, :create]
  end


  resources :renters, only: [:index]

  resources :rents

  resources :expenses

  resources :documents, only: [:index]

  resources :contracts, only: [] do
    resources :renters, only: [:new, :create]
  end

  resources :renter_contracts


  require "sidekiq/web"
  authenticate :user, ->(user) { user.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

end
