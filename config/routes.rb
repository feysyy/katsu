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
  get '/anime/:id/folders', to: "anime#anime_add_folder", as: 'add_anime_to_folder' 

  get '/manga/index', to: 'manga#index', as: 'all_manga'
  get '/manga/show/:id', to: "manga#show", as:'show_manga'
  get '/manga/:id/folders', to: "manga#manga_add_to_folder", as: 'add_manga_to_folder'
  
  get '/collection/:id/anime/:anime_id', to: 'collections#show_anime', as: 'collection_anime'
  get '/collection/:id/manga/:manga_id', to: 'collections#show_manga', as: 'collection_manga'
  resources :collections do 
    resources :anime, :manga, except: [:index, :show]
  end

  resources :posts, only: [:create]


end
