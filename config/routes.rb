Rails.application.routes.draw do

  resources :programs
  resources :reviews
  
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users do
    resource :customer do
      resources :credit_cards do
        resources :transactions, except: [:edit, :destroy]
        resources :subscriptions
      end
      resources :addresses
      resources :transactions, except: [:edit, :destroy]
    end
  end

  
  root to: 'dashboard#index'

end
