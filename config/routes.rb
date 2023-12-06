Rails.application.routes.draw do
  resources :animals
  resources :sightings do
    collection do
      get 'reports', to: 'sighting#reports'
    end
  end
end
