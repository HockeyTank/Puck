class RenameColumnsInRinkSurfaces < ActiveRecord::Migration
  def up
    remove_column :rink_surfaces, :display
    remove_column :rink_surfaces, :value
    add_column :rink_surfaces, :rink_id, :integer
    add_column :rink_surfaces, :surface_id, :integer
  end

  def down
    remove_column :rink_surfaces, :rink_id
    remove_column :rink_surfaces, :surface_id
    add_column :rink_surfaces, :display, :string
    add_column :rink_surfaces, :value, :string
  end
end
