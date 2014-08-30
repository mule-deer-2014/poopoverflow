class RemoveQuestionIdFromComments < ActiveRecord::Migration
  def change
    remove_column :comments, :question_id, :integer
  end
end
