Rails.application.routes.draw do

  post '/meals/new', to: 'meals#create'
  patch '/update', to: 'meals#update'

  resources :home
  resources :workouts
  resources :meals
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: "home#index"
end
