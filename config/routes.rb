Rails.application.routes.draw do
  resources :users
  resources :kids
  resources :courses
  resources :sub_catagories
  resources :catagories
  resources :collections
end
