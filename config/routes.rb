Rails.application.routes.draw do

  devise_for :users

  root to: 'pages#home'

  resources :loans, only: [ :index, :show, :new, :create ]

  resources :users do
      resources :credits, only: [ :index, :show, :new, :create ]
  end
  get '/sim' => 'pages#sim'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
