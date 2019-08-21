Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :governesses, only: [:show, :new, :index, :create]
  resources :bookings, only: [:new, :create, :show]


  # verb url, to: "controller#action"
  get 'dashboard', to: 'users#dashboard'
end
