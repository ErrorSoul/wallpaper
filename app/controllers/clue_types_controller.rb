class ClueTypesController < ApplicationController

  before_action :set_need_attr
  def show
    @c = ClueType.includes(:clues).find(params[:id])
    
  end
  
  def index
    @c = ClueType.all
    
  end
end
