class QuestionsController < ApplicationController
  def create
    Question.create(:body => params[:body])
    redirect_to root_path
  end

  def questions
    @questions = Question.order(created_at: :desc).all
  end

  def show
    @question = Question.find_by(id: params[:id])
  end
end
