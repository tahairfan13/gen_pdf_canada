class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :product_type
      t.string :parent_gtin
      t.string :gtin

      t.timestamps
    end
  end
end
