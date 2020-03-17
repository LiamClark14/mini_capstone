class Api::ProductsController < ApplicationController
  def all_products_method
    @products = Product.all
    render "all_products.json.jb"
  end

  def index
    @products = Product.all

    if params[:search]
      @products = @products.where("name ILIKE ?", "%#{params[:search]}%")
    end

    if params[:discount]
      @products = @products.where("price <= ?", 10.1)
    end

    if params[:sort] == "price" && params[:sort_order] == "desc"
      @products = @products.order(:price => :desc)
    elsif params[:sort] == "price" && params[:sort_order] == "asc"
      @products = @products.order(:price => :asc)
    else
      @products = @products.order(:id => :asc)
    end

    render "index.json.jb"
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def create
    @product = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
    )
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @id = params[:id]
    product = Product.find_by(id: @id)
    product.destroy
    render "destroy.json.jb"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end

  def any_product_method
    number = params["product_number"]
    @product = Product.find_by(id: number)
    render "any_product.json.jb"
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
