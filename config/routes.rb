Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Essentially the home page
  get "/products", to: "products#index"
  root "products#index"

  # This allows the user to fill out a form and POST
  get "/products/new", to: "products#new"
  post "/products", to: "products#create"

  # Searching for a created (POST) query (:id)
  get "/products/:id", to: "products#show"

  # Allowing the user to edit/update the searched item
  # Remember that you have to .find the item first then PATCH/PUT
  get "/products/:id/edit", to: "products#edit"
  patch "/products/:id", to: "products#update"
  put "/products/:id", to: "products#update"

  # This deletes the item created
  delete "/products/:id", to: "products#destroy"



  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
