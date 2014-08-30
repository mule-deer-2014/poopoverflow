class RemoveVoteCountFromComments < ActiveRecord::Migration
  def change
    remove_column :comments, :vote_count, :integer
  end
end
