class RemoveNotesFromRink < ActiveRecord::Migration
  def up
    remove_column :rinks, :notes
  end

  def down
    add_column :rinks, :notes
  end
end
