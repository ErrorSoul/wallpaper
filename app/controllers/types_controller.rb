class TypesController < ApplicationController

  before_action :set_need_attr
  def show

    @type = @types.select{|x| x if x.id == params[:id].to_i}[0]
    @type_products = Product.includes(:collection)
                            .where('type_id == ?', params[:id])
                            .limit(6)
  end
end
