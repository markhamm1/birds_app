Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"

    get "/connections" => "connections#index"
    post "/connections" => "connections#create"
    
    get "/sightings" => "sightings#index"
    post "/sightings" => "sightings#create"
    
    get "/sessions" => "sessions#index"
    get "/sessions/:id" => "sessions#show"
    post "/sessions" => "sessions#create"

    post "/logins" => "logins#create"

    get "/birds" => "birds#index"
    get "/birds/:id" => "birds#show"

    get "/regions" => "regions#index"

    get "/states" => "states#index"

    get "/pictures" => "pictures#index"
  end
end
