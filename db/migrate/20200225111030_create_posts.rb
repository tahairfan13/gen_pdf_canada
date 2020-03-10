class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.integer :code
      t.string :gtin_number
      t.string :pack
      t.string :pack_description
      t.string :brand
      t.string :brand_onwer
      t.string :gpc_description
      t.float :gross_weight
      t.string :country_of_origin
      t.boolean :kosher
      t.string :child_nutrition
      t.float :shipping_length
      t.float :shipping_width
      t.float :shipping_height
      t.float :shipping_volumn
      t.float :shelf_life
      t.string :storage
      t.integer :serving_size
      t.integer :calories
      t.float :fat
      t.float :cholesterol
      t.float :sodium
      t.float :carbohydrate
      t.float :protein
      t.datetime :availability_date
      t.datetime :first_order_date
      t.datetime :first_ship_date
      t.string :product_description_english
      t.string :serving_description_english
      t.string :ingredients_description_english
      t.string :benefits_description_english

      t.timestamps
    end
  end
end
