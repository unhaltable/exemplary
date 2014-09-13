Rails.application.routes.draw do

  devise_for :users

  resources :documents

  root 'application#index'

end
