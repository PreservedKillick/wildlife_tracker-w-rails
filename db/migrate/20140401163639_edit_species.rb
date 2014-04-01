class EditSpecies < ActiveRecord::Migration
  def change
    rename_column :species, :type, :name
  end
end
