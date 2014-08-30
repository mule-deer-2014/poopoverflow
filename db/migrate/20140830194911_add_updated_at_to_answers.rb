class AddUpdatedAtToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :updated_at, :datetime
  end
end
