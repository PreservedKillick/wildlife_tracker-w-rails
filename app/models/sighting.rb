class Sighting < ActiveRecord::Base
  belongs_to :species
  # validates :location_id, :presence => true
  validates :species_id, :presence => true

end
