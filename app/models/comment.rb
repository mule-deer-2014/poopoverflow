class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :comment_to, polymorphic: true
  has_many :votes, as: :vote_for
end
