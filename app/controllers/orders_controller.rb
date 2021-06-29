class OrdersController < ApplicationController
  def index
    orders = Order.all
    render json: orders.as_json
  end

  def create 
    order = Order.new(
      quantity: params[:quantity],
      product_id: params[:product_id],
      user_id: params[:user_id],
      quantity: params[:quantity],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total],
    )
    order.save
    render json: order.as_json
  end
end