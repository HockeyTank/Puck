class AddNoteFieldsToRinkNotes < ActiveRecord::Migration
  def change
    add_column :rink_notes, :comment, :string
    add_column :rink_notes, :author, :string
    remove_column :rink_notes, :note_id
  end
end
