class Api::CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id,
      status: "carted",
    )
    if @carted_product.save
      render "show.json.jb"
    else
      render json: { errors: @carted_product.errors.full_messages }, status: 422
    end
  end

  def index
    @carted_products = current_user.carted_products.where(status: "carted")
    # alternative: @carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    render "index.json.jb"
  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.status = "removed"
    carted_product.save
    render json: { message: "Carted product successfully removed!" }
  end
end
