Rails.application.routes.draw do

  resources :bookings
  resources :flights
  resources :planes
  resources :seat_configs
  resources :categories
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  root to: "home#index"

  resources :airports
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
