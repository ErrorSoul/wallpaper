class ProductController < ApplicationController
  before_action :set_need_attr
  def show
    @product = Product.includes(:collection => [:products => [:collection => [:label => :country]]]).find(params[:id])  

    @products = @product.collection.products
  end
end
