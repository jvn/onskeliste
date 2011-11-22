class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :Event_Name
      t.string :date

      t.timestamps
    end
  end
end
