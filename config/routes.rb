Rails.application.routes.draw do
  root 'home#index'

  resource :session, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new', as: :login
  delete '/logout', to: 'sessions#destroy', as: :logout

  resources :users
  get '/users/new', to: redirect('/register')
  get '/register', to: 'users#new', as: :register
  get '/:id', to: 'users#show', as: :profile
  get '/:id/edit', to: 'users#edit', as: :edit_profile

  resources :sounds
  

  resources :sounds do
    resources :comments
  end

  
end
