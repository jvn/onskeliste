class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :friendname
      t.string :email

      t.timestamps
    end
  end
end
