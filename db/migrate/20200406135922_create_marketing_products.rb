class CreateMarketingProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :marketing_products do |t|
      t.datetime :first_order_date
      t.datetime :first_ship_date
      t.datetime :availability_date
      t.string :product_description
      t.string :serving_description
      t.string :ingredients_description
      t.string :benefits_description
      t.references :user
      t.references :product

      t.timestamps
    end
  end
end
