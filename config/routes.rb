Rails.application.routes.draw do
  root "home#index"
  resources :categories, defaults: {format: :json},  only: [:index]
  # root "articles#index"
  resources :categories, defaults: {format: :json}
end