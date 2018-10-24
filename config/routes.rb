Rails.application.routes.draw do
  devise_for :users
  root to: "books#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  resources :authors
  resources :styles

  get "charges", to: "charges#new"
  post "charges", to: "charges#create"

  get "profile", to: "users#show"
  put "profile", to: "users#update"
  post "profile/new", to: "users#create"
  get "admin", to: "users#index"

end
