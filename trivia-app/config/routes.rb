Rails.application.routes.draw do

  resources :categories
  resources :trivia
  resources :users
  resources :answers

  post "/trivia/:id", to: "trivia#trivia_answer", as: "trivia_answer"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
