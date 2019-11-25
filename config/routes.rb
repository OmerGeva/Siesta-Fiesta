Rails.application.routes.draw do
  devise_for :users
  # resources :users, :only => [:edit, :update]
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :listings do
    resources :bookings, only: [:new, :create]
  end
  namespace :account do
    resources :bookings, only: [:index]
  end
  get "/account/edit", to: "account/bookings#edit_user"
  patch "/account/bookings", to: "account/bookings#update_user", as: :user

end
