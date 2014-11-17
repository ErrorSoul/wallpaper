class AddPaintToProduct < ActiveRecord::Migration
  def change
    add_reference :products, :paint, index: true
  end
end
