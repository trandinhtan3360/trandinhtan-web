Rails.application.routes.draw do
  
  get 'sessions/new'

  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  get  '/signup',  to: 'users#new'
  post '/signup', to: 'users#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'

  delete '/logout',  to: 'sessions#destroy'

  resources :microposts
  resources :users
  root 'users#index'
end
		