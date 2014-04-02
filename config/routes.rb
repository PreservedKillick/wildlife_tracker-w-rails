WildlifeTracker::Application.routes.draw do
  #Species:
  match('/', {:via => :get, :to => 'species#index'})
  match('species', {:via => :get, :to => 'species#index'})
  match('species', { :via => :post, :to => 'species#create'})
  match('species/new', {:via => :get, :to => 'species#new'})
  match('species/:id', {:via => :get, :to => 'species#show'})
  match('species/:id/edit', {:via => :get, :to => 'species#edit'})
  match('species/:id', {:via => [:patch, :put], :to => 'species#update'})
  match('species/:id/', {:via => :delete, :to => 'species#destroy'})
  #Sightings:
  match('species/:species_id/sightings/new', {:via => :get, :to => 'sightings#new'})
  match('species/:species_id/sightings', { :via => :post, :to => 'sightings#create'})
  match('species/:species_id/sightings/', {:via => :get, :to => 'sightings#show'})
  match('species/:species_id/sightings/:id/view', {:via => :get, :to => 'sightings#view'})
  #Locations:
  match('species/:species_id/sightings/new', {:via => :get, :to => 'locations#new'})
end
