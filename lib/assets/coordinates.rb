require 'geocoder'

locations = ["Portland, OR, USA", "Paris, FR", "New York, NY, USA", "Boston, MA, USA", "Seattle, WA< USA", "Shanghai, CN"]
selection = ""

1.times do
  selection += Geocoder.coordinates(locations.sample).to_s

end

puts selection
