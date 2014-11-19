class LineItemsController < ApplicationController
  require 'pry'
  include CurrentCart
  before_action :set_cart, only: [:create]

  def show 
    @line_item = LineItem.find(params[:id])
    
    render json: @line_item
  end
  def create
    
    @product = Product.find(params[:line_item][:product_id])
    @line_item = @cart.add_product(@product, params[:line_item][:quantity])


    respond_to do |format|
      if @line_item.save
        format.js
        format.json {render json: {notice: 'Line item was successfully created'}}
      else
        format.js
        format.json {render json: @line_item.errors,
status: :unprocessable_entity}
      end
  end
  end
private
def line_item_params
  params.require(:line_item).permit(:product_id, :quantity)
end
end






