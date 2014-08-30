class AddUpdatedAtToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :updated_at, :datetime
  end
end
