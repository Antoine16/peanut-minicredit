Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  root to: 'pages#home'

  resources :loans, only: [ :new, :create ]
  resources :users
  resources :borrowers, only: [ :new, :create, :show ]
  resources :loaners, only: [ :new, :create, :show ]
  resources :credits, only: [ :new, :create ]
  get '/sim' => 'pages#sim'
  get '/simul' => 'loans#simul'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
