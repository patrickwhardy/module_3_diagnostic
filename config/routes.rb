Rails.application.routes.draw do
  root 'stations#show'
  get '/search', to: "stations#index"
end
