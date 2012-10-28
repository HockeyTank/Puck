class RenameDevelopmentalProgramsDisplayToNameAndDropValue < ActiveRecord::Migration
  def up
    rename_column :developmental_programs, :display, :name
    remove_column :developmental_programs, :value
  end

  def down
    rename_column :developmental_programs, :name, :display
    add_column :developmental_programs, :value, :string
  end
end
