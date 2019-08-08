class Museum < ApplicationRecord
  reverse_geocoded_by :lat, :lng
  after_validation :reverse_geocode
end
