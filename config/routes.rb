Rails.application.routes.draw do
  get 'sections/new'
  get 'sections/create'
  get 'sections/index'
  get 'sections/show'
  get 'sections/edit'
  get 'sections/update'
  get 'sections/delete'
  get 'sections/destroy'
  get 'pages/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'sections#index'

  resources :sections

  get "/sections", to: "articles#index"
  get "/sections/:id", to: "articles#show"

end
