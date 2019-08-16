# frozen_string_literal: true
require 'open-uri'

class MuseumsController < ApplicationController
  def index
    lat = params[:lat]
    lng = params[:lng]
    find_nearby_places(lat, lng)
    # defining what can be taken from the URL Params
  end

  private

  def find_nearby_places(lat, lng)
    # API call (does not work yet)
    mapbox_key = ENV['MAPBOX_API_KEY']
    response = HTTParty.get("https://api.mapbox.com/geocoding/v5/mapbox.places/&lat=#{lat}&lng=#{lng}.json?access_token=#{mapbox_key}")
    JSON.parse(response.body)

    museums_hash = {
      type: 'museum',
      postcode: 'postcode',
      name: ['place_name']
    }

    JSON.parse(museums_hash)

    # url = "https://api.mapbox.com/geocoding/v5/mapbox.places/&lat=#{lat}&lng=#{lng}.json?access_token=#{mapbox_key}"
    # response = open(url).read
    # hashed_response = JSON.parse(response)
    # return_places(hashed_response)
    # interpolating the lat and long params in the base API URL
    # Using response with url a a parameter to open the URL
    # decalring a variabe for the response and returning it.
  # end

  # def return_places(response)
  #   nearby_places = []
  #   response["features, type"].each { |obj| nearby_places << obj["place_name"] }
  #   nearby_places

    # defining an empty array,
    # pushing the results to ist and filtering by features and type (as an example)
    # calling the method


  end
end
