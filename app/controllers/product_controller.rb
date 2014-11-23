# -*- coding: utf-8 -*-

class ProductController < ApplicationController
  
  before_action :set_need_attr


  def index 
    
    if params[:search]
      result = [Product, Clue].map do |klass| 
        klass.search_q(params[:search])
      end.flatten
     
      if result.present?
        @result = result
       
      else
        @message = "Мы ничего не нашли"
      end
       @search = params[:search]
    else
      redirect_to root_path and return
    end
  end
 
 def show
    @product = Product.includes(:type,:paint,:collection => [:products => [:collection => [:label => :country]]]).find(params[:id])  
    
    @products = @product.collection.products.to_a
    
    @products.delete(@product)
    
    #check slider and make it if 
    if Product.slider?(@products)
      @flag = true
      @products = Product.make_slider(@products)
    else
      @flag = false
    end
    
  end
end
