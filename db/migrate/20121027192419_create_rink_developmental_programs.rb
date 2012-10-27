class CreateRinkDevelopmentalPrograms < ActiveRecord::Migration
  def change
    create_table :rink_developmental_programs do |t|
      t.integer :rink_id
      t.integer :developmental_program_id

      t.timestamps
    end
  end
end
