class AddColumnsToDestination < ActiveRecord::Migration
  def change
    add_column :destinations, :activities, :text
    add_column :destinations, :location, :text
    add_column :destinations, :latitude, :integer
    add_column :destinations, :longitude, :integer
    add_column :destinations, :phone, :string
    add_column :destinations, :site, :text
  end
end
