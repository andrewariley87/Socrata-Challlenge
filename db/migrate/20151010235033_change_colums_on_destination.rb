class ChangeColumsOnDestination < ActiveRecord::Migration
  def change
    change_column :destinations, :latitude, :float
    change_column :destinations, :longitude, :float
  end
end
