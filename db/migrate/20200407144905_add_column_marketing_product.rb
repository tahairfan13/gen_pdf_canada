class AddColumnMarketingProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :marketing_products, :preparation_and_cooking_suggestions, :string
    add_column :marketing_products, :preparation_and_cooking_suggestions_french, :string
    add_column :marketing_products, :information, :string
    add_column :marketing_products, :information_french, :string
    add_column :marketing_products, :consumer_support_number, :string
  end
end
