class CreateHistory < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.string :user_name
      t.integer :user_id
      t.string :email
      t.string :house_address
      t.date :start_date,      null: false
      t.date :end_date,      null: false
      t.decimal :total_cost
      t.integer :rating      
    end
  end
end
