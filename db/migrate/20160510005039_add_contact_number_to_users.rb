class AddContactNumberToUsers < ActiveRecord::Migration
  def change
    add_column :users, :contactnumber, :string
  end
end
