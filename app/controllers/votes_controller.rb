class VotesController < ApplicationController
  def create
    # user = User.find(session[:user_id])
    @vote_for = find_vote_for
    page_question = find_question

    @vote_for.votes.create(
      # user_id: user.id,
      vote_value: params[:data][:vote_value]
    )
    redirect_to :back
  end

  private
  def find_vote_for
    case params[:data][:vote_for_type]
    when "question"
      Question.find(params[:data][:vote_for_id])
    when "answer"
      Answer.find(params[:data][:vote_for_id])
    when "response"
      Response.find(params[:data][:vote_for_id])
    end
  end

  def find_question
    case @vote_for.class
    when Question
      return @vote_for
    when Answer
      return @vote_for.question
    when Comment
      return comments_page_question
    end
  end

  def comments_page_question
    case @vote_for.comment_to.class
    when Question
      return @vote_for.comment_to
    when Answer
      return @vote_for.comment_to.question
    end
  end
end
