Rails.application.routes.draw do
  resources :users
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

  #client authentication and authorization
  # post "/login", to: "client_sessions#create"
  # get "/theLoggedInClient", to: "clients#show"
  # delete "/logout", to: "client_sessions#destroy"

  # JWT
  post "/login", to: "auth#create"
  get "/theLoggedInClient", to: "clients#profile"

  # Defines the root path route ("/")
  # root "posts#index"
end
