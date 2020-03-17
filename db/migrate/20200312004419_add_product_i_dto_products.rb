class AddProductIDtoProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :product_id, :integer
  end
end
