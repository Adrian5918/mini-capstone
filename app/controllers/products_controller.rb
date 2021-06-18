class ProductsController < ApplicationController
  def index
    product = Product.first
    render json: product.as_json 
  end
end