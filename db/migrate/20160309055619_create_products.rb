class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.float :product_price
      t.string :product_aisle_number
      t.references :store, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
