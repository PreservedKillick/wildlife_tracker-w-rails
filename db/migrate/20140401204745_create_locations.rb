class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.column :lat_long, :string
    end
  end
end
