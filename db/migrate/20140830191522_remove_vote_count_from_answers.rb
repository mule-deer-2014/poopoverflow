class RemoveVoteCountFromAnswers < ActiveRecord::Migration
  def change
    remove_column :answers, :vote_count, :integer
  end
end
