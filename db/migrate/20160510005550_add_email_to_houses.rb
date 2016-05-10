class AddEmailToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :email, :string
  end
end
