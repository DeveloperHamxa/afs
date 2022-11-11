Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  namespace :api do
    resources :categories, defaults: {format: :json},  only: [:index]
    resources :products, defaults: {format: :json},  only: [:index, :create, :show, :de]
  end

end
