class RemoveVoteCountFromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :vote_count, :integer
  end
end
