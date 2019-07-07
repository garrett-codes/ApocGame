Rails.application.routes.draw do
  get 'sessions/new'
  resources :teams
  resources :characters
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
