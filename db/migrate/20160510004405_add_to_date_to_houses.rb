class AddToDateToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :todate, :date
  end
end
