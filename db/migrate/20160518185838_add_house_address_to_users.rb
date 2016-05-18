class AddHouseAddressToUsers < ActiveRecord::Migration
  def change
    add_column :users, :house_address, :string
    add_column :users, :city, :string
  end
end
