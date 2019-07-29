class AddPoiToMuseums < ActiveRecord::Migration[5.2]
  def change
    add_column :museums, :POI, :string
  end
end
