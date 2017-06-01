Rails.application.routes.draw do
  
  resources :microposts
  resources :users
  root 'userss#index'
end
