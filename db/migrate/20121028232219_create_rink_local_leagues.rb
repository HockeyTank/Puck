class CreateRinkLocalLeagues < ActiveRecord::Migration
  def change
    create_table :rink_local_leagues do |t|
      t.integer :rink_id
      t.integer :local_league_id

      t.timestamps
    end
  end
end
