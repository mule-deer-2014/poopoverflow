class AddCommentToTypeToComments < ActiveRecord::Migration
  def change
    add_column :comments, :comment_to_type, :string
  end
end
