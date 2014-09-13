Rails.application.routes.draw do

  devise_for :users

  resources :documents

  root 'documents#index'

end
