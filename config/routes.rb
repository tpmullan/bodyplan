Rails.application.routes.draw do

  resources :subscriptions
  resources :reviews
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users
  resources :programs
  resources :trainers
  
  root to: 'dashboard#index'

end
