Rails.application.routes.draw do
  get 'static_pages/home'
  root 'users#index'
<<<<<<< HEAD

  resources :users

  resources :movies do
    resources :comments    
=======
  resources :users 

  resources :movies do
    resources :comments
>>>>>>> 62cfe12c0a5d9c41b197d92e26456787cba73688
  end
end
