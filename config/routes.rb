Rails.application.routes.draw do
  use_doorkeeper do
    skip_controllers :authorizations, :applications, :authorized_applications
  end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  namespace :api do
    resources :categories, defaults: {format: :json},  only: [:index, :show]
    resources :orders, defaults: {format: :json},  only: [:index, :create, :show, :destroy]
    resources :products, defaults: {format: :json},  only: [:index, :create, :show, :destroy] do
      collection do
        get :featured
      end
    end
    end
  end
