WildlifeTracker::Application.routes.draw do
  match('species', {:via => :get, :to => 'species#index'})
  match('species', {:via => :get, :to => 'species#new'})
  match('species/:id', {:via => :get, :to => 'species#show'})
  match('species/:id/edit', {:via => :get, :to => 'species#edit'})
end
