Rails.application.routes.draw do

  devise_for :users

  get '/', to: redirect('/users/sign_in')

end
