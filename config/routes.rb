Rails.application.routes.draw do
  devise_for :users
  root to: "book#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "profile", to: "users#show"
  put "profile", to: "users#update"
  post "profile/new", to: "users#create"


end
