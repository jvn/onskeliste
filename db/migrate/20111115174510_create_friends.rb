class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.integer :userfriend_id
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
