class CreateRinks < ActiveRecord::Migration
  def change
    create_table :rinks do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :addresscity
      t.string :addressstate
      t.integer :addresszip
      t.string :phone1
      t.string :phone2
      t.string :website
      t.integer :surfacecount
      t.boolean :indoor
      t.boolean :openhockey
      t.boolean :sticktime
      t.boolean :proshop
      t.text :notes

      t.timestamps
    end
  end
end
