class Category < ApplicationRecord
  has_many :category_products
  has_many :products, through: :category_products
  # this method is the same as the line of code above
  # def products
  #   category_products.map do |category_product| category_product.product end
  # end
end
