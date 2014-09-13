Rails.application.routes.draw do

  devise_for :users

  resources :documents

  root 'application#index'

  post 'search' => 'search#searchreq'
  get 'search' => 'search#searchpage'

end
