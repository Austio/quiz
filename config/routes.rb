Rails.application.routes.draw do
  devise_for :users


  root 'dashboard#index'

  resources 'quizzes', only: ['index', 'new', 'create', 'show', 'edit', 'update']
  resources 'questions', only: ['index']

end
