Rails.application.routes.draw do

  resources :apps

  devise_for :users
  root 'apps#index'

  get 'pages/profile'

  get 'pages/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
