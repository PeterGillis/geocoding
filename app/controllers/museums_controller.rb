# frozen_string_literal: true

class MuseumsController < ApplicationController
  def index
    lat = params[:lat]
    lng = params[:lng]
    find_nearby_places(lat, lng)
    raise
    # render json: { 'lat': params[:lat],
    #   'lng': params[:lng],
    #   'poi': params[:poi]
    # }
  end
end

# reference:
# objective: show the postcode and the name of the returned results as a JSON
# render json {
# postcode: ["name"],
#
# }

# {
#   "10999": ["Werkbundarchiv  museum of things"],
#   "12043": ["Museum im Bhmischen Dorf"],
#   "10179": [
#     "Mrkisches Museum",
#     "Museum Kindheit und Jugend",
#     "Historischer Hafen Berlin"
#   ],
#   "12435": ["Archenhold Observatory"]
# }

# url = "https://api.mapbox.com/geocoding/v5/mapbox.places/-73.989,40.733.json?types=poi&access_token=#{mapbox_key}"

private

def find_nearby_places(lat, lng)
  # API call
  mapbox_key = ENV['MAPBOX_API_KEY']
  response = HTTParty.get("https://api.mapbox.com/geocoding/v5/mapbox.places/#{lat},#{lng}.json?types=poi&access_token=#{mapbox_key}")
  puts response.body, response.code, response.message, response.headers.inspect
end
