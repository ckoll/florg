class CreatePollchoices < ActiveRecord::Migration
  def change
    create_table :pollchoices do |t|
      t.integer :pollquestion_id
      t.string :choice
      t.integer :order
      t.string :image
      t.integer :vote_count, :default => 0
      t.timestamps
    end
    
    #update user_count
    Pollchoice.find(:all).each do |p|
      Pollchoice.update_counters p.id, :vote_count => p.pollanswers.length
    end
    
  end
end
