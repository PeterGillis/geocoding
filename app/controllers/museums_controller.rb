# frozen_string_literal: true

class MuseumsController < ApplicationController
  def index
    mapbox_key = ENV['MAPBOX_API_KEY']
    url = "https://api.mapbox.com/geocoding/v5/mapbox.places/-73.989,40.733.json?types=poi&access_token=#{mapbox_key}"
    # url = "https://api.mapbox.com/geocoding/v5/mapbox.places/museums?lat=#{latitude}&lng=#{longitude}&access_token=#{mapbox_key}"

    response = RestClient.get(url)
    json = JSON.parse(response)
    render json: {

      }, status: 200
  end

  # lat = params[:lat]
  # lng = params[:lng]

  # Call mapbox - give the coords + 'museums'
  # make json show on screen then make dynamic.
  # "https://api.mapbox.com/geocoding/v5/mapbox.places/museums?lat=#{lat}&lng=#{lng}.json"
  # get mapbox results
  # Return the results as a json



  private

  def params
    params.require(:museum).permit(:name, :address, :latitude, :longitude)
  end
end
