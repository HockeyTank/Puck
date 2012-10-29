class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :comment
      t.string :author

      t.timestamps
    end
  end
end
