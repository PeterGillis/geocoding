# frozen_string_literal: true

class MuseumsController < ApplicationController
  def index
    # @museums = Museum.all
    render json: { 'lat': (params[:lat]), 'lng': (params[:lng])}
  end


end


# objective: show the postcode and the name of the retirned results as a JSON
