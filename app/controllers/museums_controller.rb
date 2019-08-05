class MuseumsController < ApplicationController

  def index
    @museums = Museum.all
    render json: @museums
  end

  lat = params[:lat]
  lng = params[:lng]

  # Call mapbox - give the coords + 'museums'
  "https://api.mapbox.com/geocoding/v5/mapbox.places/museums?lat=#{lat}&lng=#{lng}.json"
  # get mapbox results
  # Return the results as a json

  def museum_params
    params.require(:museum).permit(:name, :address, :lat, :lng, :poi)
  end
end
