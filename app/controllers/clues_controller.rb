class CluesController < ApplicationController

  before_action :set_need_attr
  def show
    @product = Clue.find(params[:id])
    @products = Clue.where('clue_type_id = ?', @product.id).to_a
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
