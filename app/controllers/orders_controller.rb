class OrdersController < ApplicationController
  before_action :authenticate_user
  def index 
    orders = Order.where(user_id: current_user.id)
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