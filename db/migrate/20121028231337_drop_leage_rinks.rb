class DropLeageRinks < ActiveRecord::Migration
  def up
    drop_table :league_rinks
  end

  def down
  end
end
