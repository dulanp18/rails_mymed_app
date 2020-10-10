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
  get 'login', to: redirect('/auth/google_oauth2'), as: 'login'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')

end
