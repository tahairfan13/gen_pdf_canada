class AddColumnProduct < ActiveRecord::Migration[6.0]
  def change
      add_reference :products, :parent
      add_column :products, :ignore, :boolean, default: false
  end
end
