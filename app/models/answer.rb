class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  has_many :comments, as: :comment_to
  has_many :votes, as: :vote_for
end
