class AreasController < ApplicationController
  
  before_action :set_need_attr
  def show

    @area  = @areas.select{|x| x if x.id == params[:id].to_i}[0]
    @area_products = Product.includes(:collection)
                            .where('area_id == ?', params[:id])
                            .limit(6)
  end
end
