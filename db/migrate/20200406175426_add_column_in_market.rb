class AddColumnInMarket < ActiveRecord::Migration[6.0]
  def change
    add_column :marketing_products, :product_description_french, :string
    add_column :marketing_products, :serving_description_french, :string
    add_column :marketing_products, :ingredients_description_french, :string
    add_column :marketing_products, :benefits_description_french, :string
  end
end