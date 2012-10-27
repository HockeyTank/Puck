class CreateRinkSurfaces < ActiveRecord::Migration
  def change
    create_table :rink_surfaces do |t|
      t.string :display
      t.string :value

      t.timestamps
    end
  end
end
