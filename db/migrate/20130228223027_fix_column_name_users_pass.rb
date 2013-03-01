class FixColumnNameUsersPass < ActiveRecord::Migration
  def up
     rename_column :users, :pass, :password
  end

  def down
  end
end
