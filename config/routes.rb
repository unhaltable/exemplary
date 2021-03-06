Rails.application.routes.draw do

  resources :comments

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
    resources :comments, only: [:new, :create, :edit, :show, :update, :destroy]
  end

  root 'application#index'

  post '/sections/:id/comment' => 'sections#comment'
  post '/comment/vote/:id' => 'sections#vote'

end
