Rails.application.routes.draw do
  resources :users
  resources :kids
  resources :courses
  resources :sub_catagories
  resources :catagories
  resources :collections
  resources :rooms, only: [:index, :show]
  resources :messages, only: [:index, :create]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  get '/reauth', to: 'auth#re_auth'
  mount ActionCable.server => '/cable'


end
