class AddAreaToProduct < ActiveRecord::Migration
  def change
    add_reference :products, :area, index: true
  end
end
