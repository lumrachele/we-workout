Rails.application.routes.draw do

  #resources :exercises_workouts
  #resources :categories
  resources :workouts, only: [:new, :create, :show, :edit, :update]

  get '/workouts/:id/add_exercise', to: 'workouts#add_exercise', as: "add_exercise"
  patch '/workouts/:id/add_exercise', to: "workouts#add_the_exercises", as:"add_the_exercises" #update in add_ex controller?

  #patch '/workouts/:id/edit', to: 'workouts#delete_exercise', as: "delete_exercise"

  resources :exercises, only: [:show]
  resources :users, only: [:new, :create, :show]
  # get '/users/:id', to: 'users#show', as: "current_user_path"

  root 'sessions#new'
  get '/login', to: 'sessions#new', as: "login"
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

  # get '/home', to: 'users#show', as: "home"
  get '/about', to: 'nav#about', as: "about"
  get '/workspace', to: 'nav#workspace', as: "workspace"
  get '/mission', to: 'nav#mission', as: "mission"
  get '/contact', to: 'nav#contact', as: "contact"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
