# frozen_string_literal: true

class MuseumsController < ApplicationController
  def index
    lat = params[:lat]
    lng = params[:lng]
    find_nearby_places(lat, lng)
    # render json: {
    #   'lat': params[:lat],
    #   'lng': params[:lng],
    #   'poi': params[:poi]
    # }
  end

  private
  binding.pry
  def find_nearby_places(lat, lng)
    # API call
    mapbox_key = ENV['MAPBOX_API_KEY']
    response = HTTParty.get("https://api.mapbox.com/geocoding/v5/mapbox.places/#{lat},#{lng}.json?access_token=#{mapbox_key}")
    response.body

  end
end
