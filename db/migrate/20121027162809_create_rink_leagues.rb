class CreateRinkLeagues < ActiveRecord::Migration
  def change
    create_table :rink_leagues do |t|
      t.string :display
      t.string :value

      t.timestamps
    end
  end
end
