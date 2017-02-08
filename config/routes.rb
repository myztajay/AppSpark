Rails.application.routes.draw do

  get 'commitments/create'

  get 'commitments/destroy'

  resources :apps
  resources :userskills, only: [:create, :destroy]
  resources :commitments, only: [:create, :destroy]
  devise_for :users
  root 'apps#index'

  get 'pages/profile'

  get 'pages/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
