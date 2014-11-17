
class ProductController < ApplicationController
  before_action :set_need_attr
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
