class ChangeLatAndLongToString < ActiveRecord::Migration
  def change
    change_column :destinations, :latitude, :string
    change_column :destinations, :longitude, :string
  end
end
