class CreateRinkPrograms < ActiveRecord::Migration
  def change
    create_table :rink_programs do |t|
      t.integer :rink_id
      t.string :type

      t.timestamps
    end
  end
end
