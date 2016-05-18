class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :title
      t.string :rating
      t.text :description
      t.date :release_date
      t.datetime :created_at,      null: false
      t.datetime :updated_at,      null: false
      t.float :price
      t.date :todate
      t.string :name
      t.string :email
      t.string :contactnumber
      t.integer :house_id
      t.integer :user_id
      # Add fields that let Rails automatically keep track
      # of when houses are added or modified:
      t.timestamps
    end
  end
end