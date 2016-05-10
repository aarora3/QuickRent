class AddReleseDateToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :release_date, :date
  end
end
