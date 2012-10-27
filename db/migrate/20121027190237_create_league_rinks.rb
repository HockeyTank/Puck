class CreateLeagueRinks < ActiveRecord::Migration
  def change
    create_table :league_rinks do |t|
      t.integer :rink_id
      t.integer :rink_league_id

      t.timestamps
    end
  end
end
