Rails.application.routes.draw do

  resources :categories
  resources :workouts, only: [:new, :create, :show]
  resources :exercises, only: [:index, :show]
  resources :users, only: [:new, :create, :show]# do
  #  resources :workouts
  #end


  root 'sessions#new'
  get '/login', to: 'sessions#new', as: "login"
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
