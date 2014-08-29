class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body
      t.integer :vote_count, default: 0
      t.belongs_to :question
      t.belongs_to :answer
    end
  end
end
