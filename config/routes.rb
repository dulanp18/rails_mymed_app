Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :doctors

  resources :patients

  resources :consultations do
    resources :prescriptions, only: [:create]
  end

  resources :prescriptions, only: [:index,:show]

  resources :tasks

  # Routes for Google authentication
  get 'auth/:provider/callback', to: 'sessions#googleAuth'
  get 'auth/failure', to: redirect('/')


end
