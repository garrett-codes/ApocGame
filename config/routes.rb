Rails.application.routes.draw do
  resources :users
  resources :teams
  resources :characters
  resources :tasks
  # later add resources :users do resources :teams [:create]
  #resources :auth
  get "/login", to: "auth#new", as: "login"

  post "/auth", to: "auth#create"

  delete "/auth", to: "auth#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
