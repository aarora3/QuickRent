class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :comment
      t.timestamps null: false
      t.datetime :created_at,      null: false
      t.datetime :updated_at,      null: false
      t.integer :house_id
      t.integer :user_id
    end
  end
end