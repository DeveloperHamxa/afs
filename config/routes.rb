Rails.application.routes.draw do
  root "home#index"
  namespace :api do
    resources :categories, defaults: {format: :json},  only: [:index]
    resources :categories, defaults: {format: :json}
  end 
  
end