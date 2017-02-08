Rails.application.routes.draw do

  get 'userskills/new'

  get 'userskills/create'

  get 'userskills/destroy'

  get 'skills/create'

  get 'skills/destroy'

  resources :apps
  resources :userskills
  devise_for :users
  root 'apps#index'

  get 'pages/profile'

  get 'pages/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
