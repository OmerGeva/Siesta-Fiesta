Rails.application.routes.draw do
  devise_for :users
  # resources :users, :only => [:edit, :update]
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :listings do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:create]
  end
  namespace :account do
    resources :bookings, only: [:index, :destroy] do
      collection do
        get 'pending', to: "bookings#pending_bookings", as: :pending
      end
      member do
        patch 'accept', to: "bookings#accept_booking"
      end
    end

  end


  get "/account/edit", to: "account/bookings#edit_user"
  patch "/account/bookings", to: "account/bookings#update_user", as: :user

end
