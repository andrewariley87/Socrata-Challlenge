class AddCategoryToDestination < ActiveRecord::Migration
  def change
    add_column :destinations, :category, :string
  end
end
