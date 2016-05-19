class AddNameToHistory < ActiveRecord::Migration
  def change
    add_column :histories, :name, :string
  end
end
