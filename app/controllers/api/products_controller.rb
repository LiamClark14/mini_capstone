class Api::ProductsController < ApplicationController
  def all_products_method
    @products = Product.all
    render "all_products.json.jb"
  end

  def first_product_method
    @first_product = Product.first
    render "first_product.json.jb"
  end

  def second_product_method
    @second_product = Product.find_by(id: 2)
    render "second_product.json.jb"
  end

  def third_product_method
    @third_product = Product.find_by(id: 3)
    render "third_product.json.jb"
  end
end
