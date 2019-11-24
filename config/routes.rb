Rails.application.routes.draw do
  get 'listings/index'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :listings
  namespace :account do
    resources :listings
  end
end
