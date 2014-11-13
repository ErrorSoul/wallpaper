class CollectionsController < ApplicationController

  before_action :set_need_attr
  
  def show
    @col = Collection.includes(:products).find(params[:id])
  end
end
