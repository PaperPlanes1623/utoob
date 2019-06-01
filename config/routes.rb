Rails.application.routes.draw do
  root 'users#index'

  resources :users

  resources :movies do
    resources :comments    
  end
end
