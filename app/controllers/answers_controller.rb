class AnswersController < ApplicationController
  def create
    question = Question.find_by(params[:question_id])
    question.answers.create(params.permit(:question_id, :email, :body))
    redirect_to question
  end
end
