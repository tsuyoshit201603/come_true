Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}
  root "top_pages#index"
  resources :users do
    resources :consumers, only: [:new, :create]
  end
end
