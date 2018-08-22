Rails.application.routes.draw do

  resources :categories
  resources :trivia
  resources :users, only: [:new,:create,:show]
  resources :answers

  post "/trivia/:id", to: "trivia#trivia_answer", as: "trivia_answer"

  get '/login', to: "sessions#new", as: "login"
  post '/login', to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
