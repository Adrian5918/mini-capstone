class ProductsController < ApplicationController
  def index
    product = Product.all
    render json: product
  end

  def show
    the_id = params[:id]
    product = Product.find_by(id: the_id)
    render json: product
  end

  def create
    product = Product.new(
      name: params[:input_name],
      price: params[:input_price],
      image_url: params[:input_image_url],
      description: params[:input_description]
    )
    if product.save
    render json: product
    else
      render json: {errors: product.errors.full_messages}
    end
  end

  def update
    the_id = params[:id]
      product = Product.find_by(id: the_id)
      product.name =  params[:input_name],
      product.price = params[:input_price],
      product.image_url = params[:input_image_url],
      product.description = params[:input_description],
      product.save
    render json: product
  end

  def destroy
    #find product and destroy it
    the_id = params[:id]
    product = Product.find_by(id: the_id)
    product.destroy
    render json: {message: "successfully destroyed"}
  end
end