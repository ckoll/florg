class CreateQanswers < ActiveRecord::Migration
  def change
    create_table :qanswers do |t|
      t.integer :question_id
      t.integer :answeredby
      t.integer :answer
      t.string :image
      t.timestamps
    end
  end
end
