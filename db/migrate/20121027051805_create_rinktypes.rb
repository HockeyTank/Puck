class CreateRinktypes < ActiveRecord::Migration
  def change
    create_table :rinktypes do |t|
      t.integer :rink_id
      t.string :type

      t.timestamps
    end
  end
end
