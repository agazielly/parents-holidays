Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :governessses, only: [:show, :new, :index, :create]
  resources :bookings, only: [:new, :create, :show]
end
