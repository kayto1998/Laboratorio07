Rails.application.routes.draw do
  root "users#probando"
  get "signup", to: "users#new"
get "login", to: "sessions#new"
post "login", to: "sessions#create"
post "NewUser", to: "sessions#create"
delete "logout", to: "sessions#destroy"
resources :users, except: [:new]
end
