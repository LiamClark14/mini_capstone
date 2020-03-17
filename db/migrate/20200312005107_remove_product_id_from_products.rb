class RemoveProductIdFromProducts < ActiveRecord::Migration[6.0]
  def change

    remove_column :products, :product_id, :integer
  end
end
