class MainPageController < ApplicationController
  
  
  before_action :set_need_attr, only: [:index]
  def index

    @product = Product.includes(:type,:collection => [:label => :country]).limit(6)
    
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

end


