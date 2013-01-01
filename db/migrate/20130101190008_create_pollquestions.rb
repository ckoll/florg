class CreatePollquestions < ActiveRecord::Migration
  def change
    create_table :pollquestions do |t|
      t.string :question
      t.integer :user_id
      t.integer :portal_id
      t.timestamps
    end
  end
end
