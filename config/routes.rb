Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  namespace :admin do
      resources :substreams
      resources :card_settings
      resources :students do
        collection do
          post :import
        end
      end
      resources :streams 
      resources :schools
      resources :cards, only: [:index]
      root to: "cards#index"
    end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
