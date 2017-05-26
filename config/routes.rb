Rails.application.routes.draw do
  resources :washes, only: :index
  resources :trucks, only: [:new, :index, :create]
  resources :cars, only: [:new, :index, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
