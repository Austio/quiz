Rails.application.routes.draw do
  devise_for :users


  root 'dashboard#index'

  resources 'quizes', only: ['index', 'new']
  resources 'questions', only: ['index']

end
