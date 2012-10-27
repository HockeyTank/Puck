class CreateDevelopmentalPrograms < ActiveRecord::Migration
  def change
    create_table :developmental_programs do |t|
      t.string :display
      t.string :value

      t.timestamps
    end
  end
end
