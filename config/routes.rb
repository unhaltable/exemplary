Rails.application.routes.draw do

  resources :courses

  resources :universities

  devise_for :users, :controllers => { registrations: 'registrations' }

  namespace :admin do
    resources :users
    resources :roles
  end

  resources :documents do
    resources :sections, only: [:index, :new, :create]
  end

  resources :sections, only: [:show, :edit, :update, :destroy] do
    resources :selections, only: [:index, :new, :create]
  end

  resources :selections, only: [:show, :edit, :update, :destroy]

  root 'application#index'

end
