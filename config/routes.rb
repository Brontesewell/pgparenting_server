Rails.application.routes.draw do
  resources :users
  resources :kids
  resources :journals
  resources :courses
  resources :sub_catagories
  resources :catagories
  resources :collections
  resources :conversations, only: [:index, :create]
  resources :messages, only: [:create]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  get '/reauth', to: 'auth#re_auth'
  mount ActionCable.server => '/cable'


end
