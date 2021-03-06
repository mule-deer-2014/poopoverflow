class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  belongs_to :best_answer, class_name: "Answer"
  has_many :comments, as: :comment_to
  has_many :votes, as: :vote_for
end
