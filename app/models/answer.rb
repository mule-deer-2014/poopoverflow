class Answer < ActiveRecord::Base
  include Scoring
  belongs_to :user
  belongs_to :question
  has_one :question, foreign_key: :best_answer_id
  has_many :comments, as: :comment_to
  has_many :votes, as: :vote_for
end
