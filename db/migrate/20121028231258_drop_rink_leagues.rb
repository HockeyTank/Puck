class DropRinkLeagues < ActiveRecord::Migration
  def up
    drop_table :rink_leagues
  end

  def down
    #pfft
  end
end
