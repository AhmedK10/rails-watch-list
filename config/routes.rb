Rails.application.routes.draw do
  # get 'bookmarks/new'
  # get 'lists/index'
  # get 'lists/show'
  # get 'lists/new'
  # get 'movies/index'
  # get 'movies/show'
  # get 'movies/new'
  # get 'movies/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #get "lists/movieshow", to: "lists#movieshow", as: "lists_movieshow"
  root to: "lists#index"
  delete "lists/:id", to: "lists#destroy", as: :list_delete
  resources :lists, only: [:new, :create, :show] do
    resources :bookmarks, only: [:new, :create]
  end

  #resources :lists, only: :destroy, as: :list
  resources :bookmarks, only: :destroy

end
