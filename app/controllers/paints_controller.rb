class PaintsController < ApplicationController
  before_action :set_need_attr


  def show 
    @paint = @paints.select {|x| x if x.id == params[:id].to_i}[0]
    @paint_products  = Product.includes(:collection)
                              .where('paint_id == ?', params[:id])
                              .limit(6)
  end
end
