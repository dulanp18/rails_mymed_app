Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :doctors

  resources :patients

  resources :consultations do
    resources :prescriptions, only: [:create]

    get '/cart', to: 'consultations#cart'
  end

  resources :prescriptions, only: [:index,:show]

  resources :orders, only: [:show, :create]

  resources :order_items



end
