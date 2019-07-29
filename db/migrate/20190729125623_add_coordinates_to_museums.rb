class AddCoordinatesToMuseums < ActiveRecord::Migration[5.2]
  def change
    add_column :museums, :latitude, :float
    add_column :museums, :longitude, :float
  end
end
