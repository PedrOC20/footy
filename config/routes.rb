Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  #List groups for each field(only for owner) on the field show action
  resources :fields

  # List all groups so the players can join
  resources :groups

  # List my bookings as a player
  get "my_bookings", to: 'group_members#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
