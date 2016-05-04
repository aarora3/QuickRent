class AddPriceToHouse < ActiveRecord::Migration
  def change
    add_column :houses, :price, :float
  end
end
