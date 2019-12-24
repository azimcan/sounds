Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  
  resource :session, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new', as: :login
  delete '/logout', to: 'sessions#destroy', as: :logout

  resources :users
  get '/users/new', to: redirect('/register')
  get '/register', to: 'users#new', as: :register
  get '/:id', to: 'users#show', as: :profile
  get '/:id/edit', to: 'users#edit', as: :edit_profile

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
