class MainPageController < ApplicationController
  include SetModels
  before_action :set_need_attr
  def index

    @product = Product.includes(:type,:collection => [:label => :country]).limit(6)
    
  end
end


