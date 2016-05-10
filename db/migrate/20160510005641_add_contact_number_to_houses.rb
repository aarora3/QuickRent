class AddContactNumberToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :contactnumber, :string
  end
end
