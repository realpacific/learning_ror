class QuestionsController < ApplicationController
  def index
    questions
  end

  def create
    Question.create(:body => params[:body])
    redirect_to root_path
  end

  def questions
    @questions = Question.order(created_at: :desc).all
    respond_to do |format|
      format.html
      format.json { render json: @questions }
    end
  end

  def show
    @question = Question.find_by(id: params[:id])
  end
end
