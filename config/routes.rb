Rails.application.routes.draw do
  get 'credits/index'

  get 'credits/create'

  get 'credits/new'

  get 'credits/show'

  devise_for :users

  root to: 'pages#home'
  resources :users do
    resources :credits, only: [ :index, :show, :new, :create ]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
