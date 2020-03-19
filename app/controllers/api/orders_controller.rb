class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: params[:quantity].to_i * Product.find_by(id: params[:product_id]).price.to_i,
      tax: (params[:quantity].to_i * Product.find_by(id: params[:product_id]).price.to_i) * 0.09,
      total: (params[:quantity].to_i * Product.find_by(id: params[:product_id]).price.to_i) * 1.09,
    )
    if order.save
      render json: { message: "order created successfully" }, status: :created
    else
      render json: { errors: order.errors.full_messages }, status: :bad_request
    end
  end

  def index
    @orders = current_user.orders
    render "index.json.jb"
  end

  def show
    @order = current_user.orders.find_by(id: params[:id])
    render "show.json.jb"
  end
end
