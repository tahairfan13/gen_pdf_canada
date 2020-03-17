class AddColumnProductInPosts < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :product
  end
end
