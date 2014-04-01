class CreateSpecies < ActiveRecord::Migration
  def change
    create_table :species do |t|
      t.column :type, :string
    end
  end
end
