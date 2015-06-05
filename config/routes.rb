Rails.application.routes.draw do

  resources :reviews
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users
  resources :programs
  
  root to: 'dashboard#index'

end
