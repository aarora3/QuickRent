class CreateDealers < ActiveRecord::Migration
  def change
    create_table :dealers do |t|
      t.string :name
      t.string :area
      t.string :email
      t.string :contactnumber
    end
  end
end
