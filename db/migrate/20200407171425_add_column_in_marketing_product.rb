class AddColumnInMarketingProduct < ActiveRecord::Migration[6.0]
  def change
    remove_column :marketing_products, :preparation_and_cooking_suggestions
    add_column :marketing_products, :cooking_suggestions, :string
    remove_column :marketing_products, :preparation_and_cooking_suggestions_french
    add_column :marketing_products, :cooking_suggestions_french, :string
  end
end
