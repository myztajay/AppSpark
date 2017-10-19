Rails.application.routes.draw do
  get 'pages/index'

  #taging path
  get 'tags/:tag', to: 'apps#index', as: :tag
  #root
  root 'pages#index'
  resources :apps
  resources :userskills, only: [:create, :destroy]
  resources :commitments, only: [:create, :destroy]
  devise_for :users
  # Must go after more specific devise routes
  resources :users, only: [:show, :update]
  # get 'users/profile/:id', to: 'users#show', as: :user
  #omniauth
  get "auth/github/", to: "apps#index"
  match "auth/github/callback" => "users#github_data", :via => [:get, :post]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
