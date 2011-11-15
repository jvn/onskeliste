class CreateUserfriends < ActiveRecord::Migration
  def change
    create_table :userfriends do |t|
      t.integer :userid
      t.integer :friendid

      t.timestamps
    end
  end
end
