Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  namespace :api do
    resources :categories, defaults: {format: :json},  only: [:index, :show]
    resources :products, defaults: {format: :json},  only: [:index, :create, :show, :destroy] do
      collection do
        get :featured
      end
    end
    end
    resources :orders, defaults: {format: :json},  only: [:index, :create, :show, :destroy]
  end
