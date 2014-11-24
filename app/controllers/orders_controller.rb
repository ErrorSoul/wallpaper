class OrdersController < ApplicationController
 
  include CurrentCart
  before_action :set_cart
  

  def create
    @order = Order.new(order_params)
    @order.add_line_items_from_cart(@cart)
    
    if @order.save
      
      Cart.destroy(session[:cart_id])
      session[:cart_id] = nil
      render json: {message: "Your order saved"}
    else
      render json: @order.errors, status: :unprocessable_entity
    end
      
  end


  private

  def order_params
      params.require(:order).permit(:name, :phone, :address, :total)
  end
end
