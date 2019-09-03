Rails.application.routes.draw do
  devise_for :business_users, controllers: {registrations: 'users/registrations'}
  devise_for :users, controllers: {registrations: 'users/registrations'}
  root "top_pages#index"
  resources :users do
    resources :consumers, only: [:new, :create]
  end
  resources :business_users do
    resources :businesses, only: [:new, :create]
  end
end
