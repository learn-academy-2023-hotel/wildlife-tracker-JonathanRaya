class SightingsController < ApplicationController
    def index
        sighting = Sighting.all
        render json: sighting
    end

    def show
        sighting = Sighting.find(params[:id])
        render json: sighting
    end

def create
    sighting = Sighting.create(sightings_params)
    if sighting.valid?
        render json: sighting
    else
        render json: sighting.errors
    end
end

def destroy
    sighting = Sighting.find(params[:id])
    if sighting.destroy
        render json: sighting
    else
        render json: sighitng.errors
    end
end

def update
    sighting = Sighting.find(params[:id])
    sighting.update(sightings_params)
    if sighting.valid?
        render json: sighting
    else
        render json: sighting.errors
    end 
end

    private 
    def sightings_params
        params.require(:sighting).permit(:animal_id, :latitude, :longitude, :date)
    end
end
