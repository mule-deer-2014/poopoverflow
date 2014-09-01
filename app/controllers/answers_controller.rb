class AnswersController < ApplicationController
  
  def new
    @answer = Answer.new
    @question = Question.find(params[:question_id])
  end

  def create
    p params
    @answer = Answer.new(answer_params)
    question_answer = Question.find(params[:question_id])
    if @answer.save
      question_answer.answers<<@answer
      redirect_to question_path(question_answer)
    else
      render :new
    end
  end

  def destroy
    p params
    @answer = Answer.find(params[:id])
    @answer.destroy
    redirect_to question_path(params[:question_id])
  end

  private

  def answer_params
    params.require(:answer).permit(:body, :question_id, :user_id)
  end
end
