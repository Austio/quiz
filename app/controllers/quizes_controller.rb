class QuizesController < ApplicationController
  def index
    @quizes = Quiz.all
  end

  def new
    @quiz = Quiz.new
  end

  def create

  end



end