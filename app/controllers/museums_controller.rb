# frozen_string_literal: true

class MuseumsController < ApplicationController
  def index
    # @museums = Museum.all
    render json: { 'lat': (params[:lat]), 'lng': (params[:lng])}
    raise

  end
end
