class EditSightings < ActiveRecord::Migration
  def change
    remove_column :sightings, :location, :string
    add_column :sightings, :location_id, :int
  end
end
