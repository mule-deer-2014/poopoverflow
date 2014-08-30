class AddCommentToIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :comment_to_id, :integer
  end
end
