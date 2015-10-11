class ChangeLatitudeAndLongitude < ActiveRecord::Migration
  def change
    change_column :destinations, :latitude, :decimal
    change_column :destinations, :longitude, :decimal
  end
end
