class AnswersController < ApplicationController
  
  def new
    @answer = Answer.new
    @question = Question.find(params[:question_id])
  end

  def create
    @answer = Answer.new(answers_params)

    # if @answer.save
    #   redirect_to root_path
    # else
    #   render :new
    # end
  end

  def destroy
  end
end
