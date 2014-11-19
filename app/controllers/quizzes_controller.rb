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
    @quiz = find_quiz_and_includes#.includes(:question)
    @question = @quiz.questions.build
  end

  def edit
    @quiz = find_quiz_and_includes
  end

  def update
    @quiz = Quiz.find(params[:id])
    if @quiz.update(quiz_params)
      redirect_to quiz_path(@quiz), notice: 'Updated'
    else
      render 'update', notice: 'Unable to update'
    end
  end

  private

  def quiz_params
    params.require(:quiz).permit(:title, :questions_attributes => [:title, :id, '_destroy', :answers_attributes => ['_destroy', :correct, :content, :id]])
  end

  def find_quiz_and_includes
    Quiz.includes(:questions).includes(:answers).find(params[:id])
  end


end