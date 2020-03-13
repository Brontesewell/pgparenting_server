Rails.application.routes.draw do
  resources :users
  resources :kids
  resources :courses
  resources :sub_catagories
  resources :catagories
  resources :collections
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  get '/reauth', to: 'auth#re_auth'
end
