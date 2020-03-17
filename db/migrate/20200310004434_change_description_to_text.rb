class ChangeDescriptionToText < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :description, :text
  end
end
