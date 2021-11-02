Rails.application.routes.draw do

  resources :announcements

  namespace :web do
    namespace :event do
      resources :listings
      resources :locations
    end
  end

  resources :sponsors
  resources :photos
  resources :albums
  resources :events
  get 'site/home'
  resources :pages
  resources :sections
  devise_for :users

  # Root to Home
  root 'site#home'

  get "/sections", to: "articles#index"
  get "/sections/:id", to: "articles#show"

end
