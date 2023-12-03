Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :events, only: [:index]
  root "events#index"
end
