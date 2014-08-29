class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :title, :body
      t.integer :vote_count, default: 0
      t.belongs_to :question
    end
  end
end
