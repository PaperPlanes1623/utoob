Rails.application.routes.draw do
  get 'static_pages/home'
  root 'users#index'
  resources :users 

  resources :movies do
    resources :comments
  end
end
