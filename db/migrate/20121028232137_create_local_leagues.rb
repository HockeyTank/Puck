class CreateLocalLeagues < ActiveRecord::Migration
  def change
    create_table :local_leagues do |t|
      t.string :name

      t.timestamps
    end
  end
end
