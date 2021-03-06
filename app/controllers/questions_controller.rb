class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    render layout: false
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(questions_params)
    if @question.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @questions=Question.find(params[:id])
  end

  def update
    questions=Question.find(params[:id])
    p params
    questions.update_attributes(title: params[:question][:title], body: params[:question][:body])
    redirect_to question_path(questions)
  end

  def delete

  end

  def destroy
  end

  private

  def questions_params
    params.require(:question).permit(:title, :body, :user_id, :best_answer_id)
  end
end

