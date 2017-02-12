Rails.application.routes.draw do
  get 'users/show'
  get 'commitments/create'
  get 'commitments/destroy'

  resources :apps
  resources :userskills, only: [:create, :destroy]
  resources :commitments, only: [:create, :destroy]
  resources :users, only: [:show]
  devise_for :users
  root 'apps#index'

  get 'pages/profile'
  get 'pages/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
