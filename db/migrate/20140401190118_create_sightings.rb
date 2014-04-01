class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.column :species_id, :int
      t.column :location, :string
      t.column :notes, :text
      t.column :date, :date
      t.column :time, :time

      t.timestamps
    end
  end
end
