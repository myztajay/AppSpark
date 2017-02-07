Rails.application.routes.draw do
  get 'apps/index'

  get 'apps/show'

  get 'apps/create'

  get 'apps/edit'

  get 'apps/update'

  get 'apps/delete'

  devise_for :users
  root 'pages#index'

  get 'pages/profile'

  get 'pages/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
