class SightingsController < ApplicationController
  def new
    species = Species.find(params[:species_id])
    @sighting = species.sightings.new
    render('sightings/new.html.erb')
  end

  def create
    species = Species.find(params[:species_id])
    @sighting = species.sightings.new(params[:sighting])

    if @sighting.save
      render('sightings/success.html.erb')
    else
      render('sightings/new.html.erb')
    end
  end

  def view
    species = Species.find(params[:species_id])
    @sighting = Sighting.find(params[:id])
    render('sightings/view.html.erb')
  end
end
