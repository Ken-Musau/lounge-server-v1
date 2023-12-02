Rails.application.routes.draw do
  resources :users
  resources :reviews
  resources :bookings
  resources :spaces

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # get '/hello', to: 'application#hello_world'



  # JWT
  post "/login", to: "auth#login"
  get "/currentUser", to: "users#me"
  delete "/logout", to: "auth#logout"

  # Defines the root path route ("/")
  # root "posts#index"
end
