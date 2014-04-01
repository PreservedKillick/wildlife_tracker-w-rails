class Location < ActiveRecord::Base

  has_many :sightings
  validates :lat_long, :presence => true

end
