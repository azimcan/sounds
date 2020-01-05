Rails.application.routes.draw do
  root 'home#index'

  resource :session, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new', as: :login
  delete '/logout', to: 'sessions#destroy', as: :logout

  get '/create/item', to: 'sessions#create_cart_item', as: :create_cart_item
  get '/show/cart', to: 'sessions#show_cart', as: :show_cart
  delete '/destroy/item', to: 'sessions#destroy_cart_item', as: :destroy_cart_item

  resources :users
  get '/users/new', to: redirect('/register')
  get '/register', to: 'users#new', as: :register
  get '/:id', to: 'users#show', as: :profile
  get '/:id/edit', to: 'users#edit', as: :edit_profile

  resources :sounds
  
  resources :orders

  resources :sounds do
    resources :comments
  end

  
end
