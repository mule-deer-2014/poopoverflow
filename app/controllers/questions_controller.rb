class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    respond_to do |format|
      if @question.save
        # format.json { render json: {question: @question}, status: :created, location: @question }
        # format.json { render json: {html: render partial 'new_question', locals: {question: @question} }}
        format.html {render '_new_question', locals: {question: @question}, layout: false }
      else
        render :new
      end
    end
  end

  private
  def question_params
    params.require(:question).permit(:title, :body)
  end 
end
