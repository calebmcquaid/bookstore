Rails.application.routes.draw do
  devise_for :users
  root to: "books#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  resources :authors
  resources :styles

  get "profile", to: "users#show"
  put "profile", to: "users#update"
  post "profile/new", to: "users#create"

end
