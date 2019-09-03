Rails.application.routes.draw do
  devise_for :users
  root "top_pages#index"
  resources :users do
    resources :consumers, only: [:index]
  end
end
