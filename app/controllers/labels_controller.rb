class LabelsController < ApplicationController
  before_action :set_need_attr
  def show
    z = params[:id].to_i
    @l = @label.select{ |x| x if x.id == z }[0]
    @col = Collection.where('label_id == ?', z)
  end
end
