# frozen_string_literal: true
require 'open-uri'

class MuseumsController < ApplicationController
  def index
    lat = params[:lat]
    lng = params[:lng]
    find_nearby_places(lat, lng)
    # defining what can be taken from the URL Params
    raise
  end

  private

  def find_nearby_places(lat, lng)
    # API call (does not work yet)
    mapbox_key = ENV['MAPBOX_API_KEY']
    response = HTTParty.get("https://api.mapbox.com/geocoding/v5/mapbox.places/&lat=#{lat}&lng=#{lng}.json?access_token=#{mapbox_key}")
    jsoned = JSON.parse(response.body)

    # returns array of museums
    museums = jsoned['features']
    # returns the first museum in the array
    # p jsoned['features'][0]
    # returns the name of the first museum in the array

    # create a hash, postcodes as keys and empty array as the values.
    new_hash = {}
    # lets create key-value pair, postcode:empty-array
    museums.each do |m|
      # get post code
      postcode = m['context'][1]['text']
      # get the museum name
      museum_name = m['text']
      # new_hash[postcode] = [museum_name]
      if the post code(key) of the museum already exist in new_hash
          then insert the museum name into the array(value)
      otherwise
          do new_hash[postcode] = [museum_name]
      end

      # new_hash["11111"] = ["Museum A","Museum B"]
      # new_hash["11111"] = ["Museum B"]
    end

    # new_hash["11111"] = ["Museum B"]
    # now new_hash is a key-value pairs of postcode and empty array
    # postcode:empty array
    # {
    #   "11111":["museum A"],
    #   "22222":["Museum B"]
    # }

    # max = 30
    # for i in 0...max
    #   museum_name = jsoned['features'][i]['text']
    #   new_hash[postcode].push(museum_name)
    # end

    # access post code, always second hash of 'context'
    # jsoned['features'][0]['context'][1]
    # the post code
    # postcode = jsoned['features'][0]['context'][1]['text']


    final_response = new_hash

    final_response = {
      "10437":[
          "Museum01",
          "Museum02",
          "Museum03"
      ]
    }





  end
end


