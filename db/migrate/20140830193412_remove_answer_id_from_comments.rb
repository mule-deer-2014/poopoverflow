class RemoveAnswerIdFromComments < ActiveRecord::Migration
  def change
    remove_column :comments, :answer_id, :integer
  end
end
