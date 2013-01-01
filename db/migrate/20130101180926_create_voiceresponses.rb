class CreateVoiceresponses < ActiveRecord::Migration
  def change
    create_table :voiceresponses do |t|
      t.integer :voice_id
      t.integer :answeredby
      t.integer :answer
      t.string :image
      t.timestamps
    end
  end
end
