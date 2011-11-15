class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.integer :event_id
      t.string :wish
      t.integer :talen

      t.timestamps
    end
  end
end
