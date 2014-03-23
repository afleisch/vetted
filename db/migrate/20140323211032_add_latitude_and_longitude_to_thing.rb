class AddLatitudeAndLongitudeToThing < ActiveRecord::Migration
  def change
    add_column :things, :latitude, :float
    add_column :things, :longitude, :float
  end
end
