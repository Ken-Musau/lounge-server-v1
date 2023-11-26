Rails.application.routes.draw do
  resources :reviews
  resources :bookings
  resources :spaces

  resources :admins,  only: [:index]
  resources :clients
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get '/hello', to: 'application#hello_world'

  # authentication
  post "/clientLogin", to: "client_sessions#create"

  # Defines the root path route ("/")
  # root "posts#index"
end
