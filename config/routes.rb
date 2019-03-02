Rails.application.routes.draw do
  namespace :api do
    get '/movies' => 'movies#index'
    get '/movies/:id' => 'movies#show'
  end
end
