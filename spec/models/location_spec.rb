require 'spec_helper'

describe Location do

  it { should have_many :sightings}
  it { should validate_presence_of :lat_long}

end
