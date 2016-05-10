class RemoveReleaseDateFromHouses < ActiveRecord::Migration
  def change
    remove_column :houses, :release_date
  end
end
