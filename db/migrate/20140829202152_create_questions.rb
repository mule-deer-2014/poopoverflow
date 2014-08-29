class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title, :body
      t.integer :vote_count, default: 0
    end
  end
end
