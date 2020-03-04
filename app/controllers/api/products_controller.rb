class Api::ProductsController < ApplicationController
  def products_method
    @products = Product.all
    render "all_products.json.jb"
  end
end
