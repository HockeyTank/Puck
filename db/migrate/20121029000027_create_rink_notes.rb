class CreateRinkNotes < ActiveRecord::Migration
  def change
    create_table :rink_notes do |t|
      t.integer :rink_id
      t.integer :note_id

      t.timestamps
    end
  end
end
