Rails.application.routes.draw do
  root 'card#index'
  namespace :admin do
      resources :substreams
      resources :students
      resources :streams
      resources :school_details

      root to: "substreams#index"
    end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
