class LocationsController < ApplicationController
  def new
    species = Species.find(params[:species_id])
    @location = Location.new
    render('locations/new.html.erb')
  end

  def create
    species = Species.find(params[:species_id])
    @location = Location.find_or_create_by_lat_long(params[:location])

  end

end
