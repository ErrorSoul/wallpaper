class CountriesController < ApplicationController
  before_action :set_need_attr
  def show
    @c = Country.includes(:labels).find(params[:id])
    
    
  end
end
