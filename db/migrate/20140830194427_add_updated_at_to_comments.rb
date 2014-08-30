class AddUpdatedAtToComments < ActiveRecord::Migration
  def change
    add_column :comments, :updated_at, :datetime
  end
end
