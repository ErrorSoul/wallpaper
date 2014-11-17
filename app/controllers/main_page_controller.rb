class MainPageController < ApplicationController
  
  require 'pry'
  before_action :set_need_attr, only: [:index]
  def index

    @product = Product.includes(:type,:paint, :collection => [:label => :country]).limit(6)
    
  end

  def more 
    @new_products = Product.includes(:type,:collection => [:label => :country]).where('id < ?', params[:id]).limit(6)
    render json:  {post: @new_products}, 
    :include => {:type => {:only => [:name, :id]}, 
                 :collection => 
                      {:include => {:label  => {:include => {:country => {:only => [:name, :id] } },
                                                :only =>[:name, :id] }},  
                       :only =>[:name, :id]}}
  end







def more_type
  
  modes = {"1" => "type_id",
           "2" => "paint_id"}
  
  @new_products = Product.includes(:collection)
    .where("#{modes[params[:mode_id]]} = ? and id < ? ", 
           params[:elem_id ], 
           params[:id]
           ).limit(6)
    
  
  render json:  {product: @new_products}


end

end

