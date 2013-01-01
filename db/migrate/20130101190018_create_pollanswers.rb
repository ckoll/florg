class CreatePollanswers < ActiveRecord::Migration
  def change
    create_table :pollanswers do |t|
      t.integer :pollquestion_id
      t.integer :pollchoice_id
      t.string :user_id
      t.timestamps
    end
  end
end
