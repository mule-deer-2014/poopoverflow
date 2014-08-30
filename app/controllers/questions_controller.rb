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
    p "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
    p params
    p question_params
    @partial_shit =

    @question = Question.new(question_params)
      if @question.save
        # render :json => @question, :html => "whatthefuck"
        render '_new_question', locals: {question: @question}, layout: false
      else
        redirect_to root_path
      end
    #     render :new, layout: false
    #   end
    # # end
  end

  private
  def question_params
      params.require(:question).permit(:title, :body)
  end
end
