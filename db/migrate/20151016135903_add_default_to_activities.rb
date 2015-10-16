class AddDefaultToActivities < ActiveRecord::Migration
  def change
    change_column :destinations, :activities, :string, :default => "lodging"
  end
end
