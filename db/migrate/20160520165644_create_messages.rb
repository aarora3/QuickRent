class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :title
      t.text :description
      t.datetime :created_at,      null: false
      t.datetime :updated_at,      null: false
    end
  end
end