Rails.application.routes.draw do
  
  get 'sessions/new'

  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  get  '/signup',  to: 'users#new'
  post '/signup', to: 'users#create'
  match '/signup',  to: 'users#new',             via: 'get'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :microposts
  resources :users
  resources :account_activations, only: [:edit]
  root 'users#index'
end
		