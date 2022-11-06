Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get 'card/index'
  namespace :admin do
      resources :substreams
      resources :students
      resources :streams
      resources :school_details
      resources :cards
      root to: "substreams#index"
    end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
