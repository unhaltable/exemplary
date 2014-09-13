Rails.application.routes.draw do

  resources :universities

  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :documents do
    resources :sections, only: [:index, :new, :create]
  end

  resources :sections, only: [:show, :edit, :update, :destroy] do
    resources :selections, only: [:index, :new, :create]
  end

  resources :selections, only: [:show, :edit, :update, :destroy]

  root 'application#index'

end
