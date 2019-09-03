Rails.application.routes.draw do
  devise_for :users
  root "top_pages#index"
  resources :users do
    resources :consumers, only: [:new, :create]
  end
end
