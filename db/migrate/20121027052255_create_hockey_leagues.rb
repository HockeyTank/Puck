class CreateHockeyLeagues < ActiveRecord::Migration
  def change
    create_table :hockey_leagues do |t|
      t.integer :rink_id
      t.string :league

      t.timestamps
    end
  end
end
