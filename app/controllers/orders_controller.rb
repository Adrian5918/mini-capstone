class OrdersController < ApplicationController
  def index
    order = Order.all
    render json: order.as_json
  end

  def create 
    #if current_user == user_id: params[:user_id]
    subtotal = price
    tax
    total

    order = Order.new(
      quantity: params[:quantity],
      product_id: params[:product_id],
      user_id: params[:user_id]
    )
    order.save
    render json: order.as_json
  end
end