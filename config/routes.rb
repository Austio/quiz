Rails.application.routes.draw do
  devise_for :users


  root 'dashboard#index'

  resources 'quizes', only: ['index', 'new', 'show']
  resources 'questions', only: ['index']

end
