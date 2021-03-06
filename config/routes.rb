RedBook::red_book
Rails.application.routes.draw do
  namespace :api do
    get '/movies' => 'movies#index'
    post '/movies' => 'movies#create'
    get '/movies/:id' => 'movies#show'
    patch '/movies/:id' => 'movies#update'
    delete '/movies/:id' => 'movies#destroy'
  end
end
