class EditColumnsToDestination < ActiveRecord::Migration
  def change
    change_column :destinations, :longitude, :float
    change_column :destinations, :latitude, :float
    add_column :destinations, :picture_url, :text
    add_column :destinations, :website_url, :text
  end
end
