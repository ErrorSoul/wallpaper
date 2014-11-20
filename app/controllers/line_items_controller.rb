# -*- coding: utf-8 -*-
class LineItemsController < ApplicationController
  require 'pry'
  include CurrentCart
  before_action :set_cart, only: [:create, :show, :destroy]
  
  def show 
    @line_item = LineItem.includes(:product).where('cart_id = ?', @cart.id)
    if @line_item.empty?
      render json: {message: "Baша корзина пуста"}
    else
      render json: {items: @line_item},
      :include => :product
    end
    
  end
  
  


  def update 
    @list_update = params[:items]
    x = @list_update.map do |lin|
      if LineItem.find(lin[:id])
                 .update_attribute(:quantity, lin[:quantity])
        true
      else
        false
      end
    end
    
    if x.all?
      render json: {message: "Your line_item updated" }
    else 
      render json: {message: "something gone wrong"}
    end
  end
  
  def create
    
    @product = Product.find(params[:line_item][:product_id])
    @line_item = @cart.add_product(@product, params[:line_item][:quantity])


    respond_to do |format|
      if @line_item.save
        format.js
        
        format.json {render json: {notice: 'Line item was successfully created'}}
        
      else
     
        
        format.json {render json: @line_item.errors,
status: :unprocessable_entity}
      end
    end

  end

    def destroy
     
      @cart.line_items.destroy(params[:id])
      render json: {message: "Your post deleted"}
    end
 
private
    def line_item_params
      params.require(:line_item).permit(:product_id, :quantity)
    end


end






