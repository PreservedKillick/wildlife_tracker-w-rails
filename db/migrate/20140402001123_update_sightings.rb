class UpdateSightings < ActiveRecord::Migration
  def change
    add_column :sightings, :latitute, :decimal
    add_column :sightings, :longitude, :decimal
    rename_column :locations, :lat_long, :region
  end
end
