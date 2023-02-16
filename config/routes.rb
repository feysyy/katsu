Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#homepage"

  get '/homepage', to: 'pages#homepage', as: 'homepage'
  get '/landing_page', to: 'pages#landing_page', as: 'landing_page'

  ## anime routes
  get '/index', to: "anime#index", as: 'all_anime'
  get '/show/:id', to: "anime#show", as: 'show_anime'

  get '/manga/index', to: 'manga#index', as: 'all_manga'

  get '/show/:id', to: "manga#show", as:'show_manga'
end
