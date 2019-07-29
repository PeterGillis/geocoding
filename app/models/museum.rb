class Museum < ApplicationRecord
  geocoded_by :address
  after_valiadtion :geocode, if: :will_save_change_to_address?
end
