class AddColumnInProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :code, :string
  end
end
