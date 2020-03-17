class RemoveColumnsFromPost < ActiveRecord::Migration[6.0]
  def up
    remove_column :posts, :gtin_number
    remove_column :posts, :name
    remove_column :posts, :code
  end

  def down
    add_column :posts, :gtin_number, :string
    add_column :posts, :name, :string
    add_column :posts, :code, :string
  end
end
