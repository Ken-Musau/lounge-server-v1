Rails.application.routes.draw do
  get 'clients/index'
  get 'clients/show'
  get 'clients/create'
  get 'clients/update'

  resources :admins,  only: [:edit, :update, :show, :destory]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get '/hello', to: 'application#hello_world'

  # Defines the root path route ("/")
  # root "posts#index"
end
