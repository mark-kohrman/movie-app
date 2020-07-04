Rails.application.routes.draw do
  namespace :api do
    get "/actors" => "actors#index"
  end
  namespace :api do
    get "/movies" => "movies#index"
  end
end
