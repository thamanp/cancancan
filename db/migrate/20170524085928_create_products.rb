class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.integer :user_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
