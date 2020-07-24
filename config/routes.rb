Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :movies, only: [:new, :create, :index]
  resources :books, only: [:new, :create, :index]
  root 'books#index'

  get '/movies', to: "movies#index"
  get '/new_movie', to: "movies#new"
  get '/books', to: "books#index"
  get '/new_book', to: "books#new"

end
