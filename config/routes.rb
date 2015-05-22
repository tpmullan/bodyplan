Rails.application.routes.draw do

  devise_for :users
  resources :users
  
  as :user do
    authenticated :user do
      root to: 'dashboard#index', as: 'dashboard'
    end
    unauthenticated :user do
      root to: 'devise/sessions#new'
    end
  end

end
