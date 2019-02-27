Rails.application.routes.draw do

  get 'public_meals/index'
  get 'public_workouts/index'
  
  post '/meals/new', to: 'meals#create'
  # post '/meals/:id/update', to: 'meals#update'
  delete '/meals/:id/destroy', to: 'meals#destroy'
  post '/workouts/new', to: 'workouts#create'

  resources :home
  resources :workouts
  resources :meals
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: "home#index"
end
