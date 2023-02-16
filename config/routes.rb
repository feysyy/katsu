Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#homepage"

  get '/homepage', to: 'pages#homepage', as: 'homepage'
  get '/landing_page', to: 'pages#landing_page', as: 'landing_page'
  get '/anime', to: 'pages#anime', as: 'anime'
  get '/manga', to: 'pages#manga', as: 'manga'
end
