class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :user_id
      t.integer :portal_id
      t.integer :question
      t.string :image
      t.integer :accepted_answer, :default => 0 #qanswer_id
      t.timestamps
    end
  end
end
