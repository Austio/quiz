class QuizzesController < ApplicationController

  def index
    @quizzes = Quiz.all
  end

  def new
    @quiz = Quiz.new
  end

  def create
    quiz = Quiz.create(quiz_params)
    if quiz
      redirect_to quiz
    else
      render 'new', notice: 'Unable to save quiz'
    end
  end

  def show
    @quiz = Quiz.where('id = ?', params[:id])
  end

  private

  def quiz_params
    params.require(:quiz).permit(:title, :question_params)
  end


end