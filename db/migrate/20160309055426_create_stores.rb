class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :store_name
      t.string :store_image
      t.text :store_location

      t.timestamps null: false
    end
  end
end
